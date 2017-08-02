<%--
  Created by IntelliJ IDEA.
  User: Arisara
  Date: 3/25/13
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head><title>Simple jsp page</title>
    <script type='text/javascript' src='../dwr/engine.js'></script>
    <script type='text/javascript' src='../dwr/util.js'></script>
    <script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css">
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/js/jquery.js"></script>

</head>
<script type="text/javascript">
    function validateForm() {
        if (trim(thisForm.code.value) == '') {
            alert('Please Input ISIC Code !!');
            thisForm.code.focus();
            return false;
        }
        return true;
    }


    function isNumberKey() {
        var charCode = event.keyCode;
        return !(charCode > 31 && (charCode < 48 || charCode > 57)) || charCode == 46;
    }



    function findParent(id, zone, keyName, keyValue, clearZones) {
        var versionId = thisForm.versionId.value;
         AjaxManager.findParentByChild(versionId, id, function (data) {
         prepareOption(zone, data, keyName, keyValue, clearZones);

        });
    }

    function prepareOption(zone, data, keyName, keyValue, clearZones) {
        dwr.util.removeAllOptions(zone);
        document.getElementById(zone).options[0] = new Option('-------------  Please Select  -------------', '');
        dwr.util.addOptions(zone, data, keyName, keyValue);

    }

</script>
<body>
<s:form action="isic_detail_addItem">
    <s:hidden id="versionId" name="versionId"/>
    <s:hidden id="isicCodeItemId" name="isicCodeItemId"/>
    <s:hidden id="rowId" name="rowId"/>
    <s:hidden id="level" name="level"/>
    <s:hidden id="isicCodeStatus" name="isicCodeStatus"/>
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
                                    <td style="height:100%">
                                            <%--content here--%>
                                        <table>
                                            <tr>
                                                <td><b>ISIC Code : ${isicCodeStatus}</b></td>
                                            </tr>
                                        </table>
                                            <div class="style_notsend">
                                                <c:choose>
                                                    <c:when test="${requestScope.error eq 'fail'}">
                                                        <c:out value="${requestScope.alertMsg}"/>
                                                    </c:when>
                                                </c:choose>
                                            </div>
                                        <table width="100%" align="center" class="displayTable">
                                            <tr class="bgGreen2">
                                                <td align="right">Version :</td>
                                                <td>&nbsp;${versionName}</td>
                                            </tr>
                                            <c:if test="${(isicCodeStatus == 'Add')&&(level >0)}">

                                            <c:if test="${(level ==1)}">

                                                <tr class="bgGreen1">
                                                    <td align="right">Parent Level0 :</td>
                                                    <td>
                                                        <s:select list="listLevel0" name="parentLevel0" id="level0"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"/>
                                                    </td>
                                                </tr>
                                            </c:if>


                                            <c:if test="${(level ==2)}">
                                                <tr class="bgGreen1">
                                                    <td align="right">Parent Level0 :</td>
                                                    <td>
                                                        <s:select list="listLevel0" name="parentLevel0" id="level01"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  onchange="findParent(this.value,'level11','key','value',null);"/>
                                                    </td>
                                                </tr>
                                                <tr class="bgGreen2">
                                                    <td align="right">Parent Level1 :</td>
                                                    <td>
                                                        <s:select list="listLevel1" name="parentLevel1" id="level11"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  />
                                                    </td>
                                                </tr>
                                            </c:if>
                                            <c:if test="${(level ==3)}">
                                                <tr class="bgGreen1">
                                                    <td align="right">Parent Level0 :</td>
                                                    <td>
                                                        <s:select list="listLevel0" name="parentLevel0" id="level02"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  onchange="findParent(this.value,'level12','key','value',null);"/>
                                                    </td>
                                                </tr>
                                                <tr class="bgGreen2">
                                                    <td align="right">Parent Level1 :</td>
                                                    <td>
                                                        <s:select list="listLevel1" name="parentLevel1" id="level12"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  onchange="findParent(this.value,'level21','key','value',null)"/>
                                                    </td>
                                                </tr>
                                                <tr class="bgGreen1">
                                                    <td align="right">Parent Level2 :</td>
                                                    <td>
                                                        <s:select list="listLevel2" name="parentLevel2" id="level21"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  />
                                                    </td>
                                                </tr>
                                            </c:if>
                                            <c:if test="${(level ==4)}">
                                                <tr class="bgGreen1">
                                                    <td align="right">Parent Level0 :</td>
                                                    <td>
                                                        <s:select list="listLevel0" name="parentLevel0" id="level03"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  onchange="findParent(this.value,'level13','key','value',null);"/>
                                                    </td>
                                                </tr>
                                                <tr class="bgGreen2">
                                                    <td align="right">Parent Level1 :</td>
                                                    <td>
                                                        <s:select list="listLevel1" name="parentLevel1" id="level13"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  onchange="findParent(this.value,'level22','key','value',null)"/>
                                                    </td>
                                                </tr>
                                                <tr class="bgGreen1">
                                                    <td align="right">Parent Level2 :</td>
                                                    <td>
                                                        <s:select list="listLevel2" name="parentLevel2" id="level22"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  onchange="findParent(this.value,'level31','key','value', null)"/>
                                                    </td>
                                                </tr>
                                                <tr class="bgGreen2">
                                                    <td align="right">Parent Level3 :</td>
                                                    <td>
                                                        <s:select list="listLevel3" name="parentLevel3" id="level31"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                 />

                                                    </td>
                                                </tr>
                                            </c:if>
                                            <c:if test="${(level ==5)}">
                                                <tr class="bgGreen1">
                                                    <td align="right">Parent Level0 :</td>
                                                    <td>
                                                        <s:select list="listLevel0" name="parentLevel0" id="level04"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  onchange="findParent(this.value,'level14','key','value',null);"/>
                                                    </td>
                                                </tr>
                                                <tr class="bgGreen2">
                                                    <td align="right">Parent Level1 :</td>
                                                    <td>
                                                        <s:select list="listLevel1" name="parentLevel1" id="level14"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  onchange="findParent(this.value,'level23','key','value',null)"/>
                                                    </td>
                                                </tr>
                                                <tr class="bgGreen1">
                                                    <td align="right">Parent Level2 :</td>
                                                    <td>
                                                        <s:select list="listLevel2" name="parentLevel2" id="level23"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  onchange="findParent(this.value,'level32','key','value', null)"/>
                                                    </td>
                                                </tr>
                                                <tr class="bgGreen2">
                                                    <td align="right">Parent Level3 :</td>
                                                    <td>
                                                        <s:select list="listLevel3" name="parentLevel3" id="level32"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"
                                                                  onchange="findParent(this.value,'level4','key','value',null)"/>

                                                    </td>
                                                </tr>
                                                <tr class="bgGreen1">
                                                    <td align="right">Parent Level4 :</td>
                                                    <td>
                                                        <s:select list="listLevel4" name="parentLevel4" id="level4"
                                                                  headerKey=""
                                                                  headerValue="-------------  Please Select  -------------"
                                                                  listKey="code" listValue="code"/>
                                                    </td>
                                                </tr>
                                                </c:if>
                                            </c:if>
                                             <c:choose>
                                                <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                                  <tr class="bgGreen1">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                                 <tr class="bgGreen2">
                                                </c:when>
                                                <c:otherwise>
                                                    <tr class="bgGreen1">
                                                </c:otherwise>
                                            </c:choose>

                                             <td align="right">Level <span class="require_field">*</span> :</td>
                                                <td>&nbsp;${level} </td>
                                            </tr>
                                            <c:choose>
                                                 <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                                    <tr class="bgGreen2">
                                                 </c:when>
                                                 <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                                    <tr class="bgGreen1">
                                                </c:when>
                                                <c:otherwise>
                                                    <tr class="bgGreen2">
                                                 </c:otherwise>
                                            </c:choose>
                                                <td align="right">Code <span class="require_field">*</span> :</td>
                                                <td><s:textfield name="isciCode" id="isciCode" size="20" maxLength="10"/></td>
                                            </tr>

                                            <c:choose>
                                                <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                                    <tr class="bgGreen1">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                                    <tr class="bgGreen2">
                                                </c:when>
                                                <c:otherwise>
                                                    <tr class="bgGreen1">
                                                </c:otherwise>
                                            </c:choose>
                                                <td align="right">รหัส Area FI1 :</td>
                                                <td><s:textfield name="fiCode1" id="fiCode1" size="20" maxLength="10"/></td>
                                            </tr>
                                            <c:choose>
                                               <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                                   <tr class="bgGreen2">
                                               </c:when>
                                               <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                                   <tr class="bgGreen1">
                                               </c:when>
                                               <c:otherwise>
                                                    <tr class="bgGreen2">
                                               </c:otherwise>
                                            </c:choose>
                                                <td align="right">รหัส Area FI2 :</td>
                                                <td><s:textfield name="fiCode2" id="fiCode2" size="20" maxLength="10"/></td>
                                            </tr>
                                            <c:choose>
                                                <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                                   <tr class="bgGreen1">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                                    <tr class="bgGreen2">
                                                </c:when>
                                                <c:otherwise>
                                                    <tr class="bgGreen1">
                                                </c:otherwise>
                                            </c:choose>
                                            <td align="right">รหัส Area FM :</td>
                                            <td><s:textfield name="fmCode" id="fmCode" size="20" maxLength="10"/></td>
                                            </tr>
                                            <c:choose>
                                            <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen2">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen1">
                                                </c:when>
                                                <c:otherwise>
                                            <tr class="bgGreen2">
                                                </c:otherwise>
                                                </c:choose>

                                            <td align="right">รหัส Area IPI :</td>
                                            <td><s:textfield name="ipiCode" id="ipiCode" size="20" maxLength="10"/></td>
                                            </tr>
                                            <c:choose>
                                            <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen1">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen2">
                                                </c:when>
                                                <c:otherwise>
                                            <tr class="bgGreen1">
                                                </c:otherwise>
                                                </c:choose>

                                            <td align="right">หมวด :</td>
                                            <td><s:textfield name="fristCategoryCode" id="fristCategoryCode" size="20"
                                                                 maxLength="10"/></td>
                                            </tr>
                                            <c:choose>
                                            <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen2">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen1">
                                                </c:when>
                                                <c:otherwise>
                                            <tr class="bgGreen2">
                                                </c:otherwise>
                                                </c:choose>
                                             <td align="right">หมวดย่อย :</td>
                                             <td><s:textfield name="secondCategoryCode" id="secondCategoryCode" size="20"
                                                                 maxLength="10"/></td>
                                            </tr>
                                            <c:choose>
                                            <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen1">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen2">
                                                </c:when>
                                                <c:otherwise>
                                            <tr class="bgGreen1">
                                                </c:otherwise>
                                                </c:choose>
                                            <td align="right">หมู่ :</td>
                                            <td><s:textfield name="thirdCategoryCode" id="thirdCategoryCode" size="20"
                                                                 maxLength="10"/></td>
                                            </tr>
                                            <c:choose>
                                            <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen2">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen1">
                                                </c:when>
                                                <c:otherwise>
                                            <tr class="bgGreen2">
                                                </c:otherwise>
                                                </c:choose>
                                            <td align="right">หมู่ย่อย :</td>
                                            <td><s:textfield name="fourCategoryCode" id="fourCategoryCode" size="20" maxLength="10"/></td>
                                            </tr>
                                            <c:choose>
                                            <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen1">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen2">
                                                </c:when>
                                                <c:otherwise>
                                            <tr class="bgGreen1">
                                                </c:otherwise>
                                                </c:choose>
                                            <td align="right">กิจกรรม(ธปท.) :</td>
                                            <td><s:textfield name="activityCode" id="activityCode" size="20" maxLength="10"/></td>
                                            </tr>
                                            <c:choose>
                                            <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                            <tr class="bgGreen2">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                                    <tr class="bgGreen1">
                                                </c:when>
                                                <c:otherwise>
                                                     <tr class="bgGreen2">
                                                </c:otherwise>
                                                </c:choose>
                                            <td align="right">กิจกรรมย่อย(ธปท.) :</td>
                                            <td><s:textfield name="subActivityCode" id="subActivityCode" size="20" maxLength="10"/></td>
                                            </tr>

                                            <c:if test="${(isicCodeStatus == 'Edit')}">
                                                <tr class="bgGreen1">
                                                    <td align="right">Parent And Child Code :</td>
                                                    <td><s:textfield name="parentAndChildCode" id="parentAndChildCode" size="20"
                                                                     maxLength="10"/></td>
                                                </tr>
                                            </c:if>
                                            <c:choose>
                                            <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                                    <tr class="bgGreen1">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                                    <tr class="bgGreen2">
                                                </c:when>
                                                <c:otherwise>
                                                    <tr class="bgGreen2">
                                                </c:otherwise>
                                                </c:choose>
                                            <td align="right">รายละเอียดกิจกรรมทางเศรษฐกิจ :</td>
                                            <td><s:textarea name="description" id="description" rows="6" cols="47"/></td>
                                            </tr>
                                            <c:choose>
                                            <c:when test="${(level mod 2 ) == 0 && (isicCodeStatus == 'Add')}">
                                                    <tr class="bgGreen2">
                                                </c:when>
                                                <c:when test="${(level mod 2 ) == 1 && (isicCodeStatus == 'Add')}">
                                                    <tr class="bgGreen1">
                                                </c:when>
                                                <c:otherwise>
                                                    <tr class="bgGreen1">
                                                </c:otherwise>
                                                </c:choose>
                                            <td align="right">ISIC Description :</td>
                                            <td><s:textarea name="isisDescription" id="isisDescription" rows="6" cols="47"/></td>
                                            </tr>
                                        </table>
                                        <table width="100%">
                                            <tr align="center">
                                                <td>
                                                    <s:submit name="ok" value="Save" method="save" cssClass="button"
                                                              onclick="return validateForm()"/>&nbsp;
                                                    <s:submit name="reset" value="Reset" method="reset" cssClass="button"/>&nbsp;
                                                   <s:submit name="back" value="Back" method="back" cssClass="button"/>&nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="20px">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28"
                                                                                height="37" alt=""></td>
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