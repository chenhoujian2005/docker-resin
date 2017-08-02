<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: Feb 16, 2012
  Time: 2:52:37 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head><title>Simple jsp page</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/includes/css/style.css">
    <script type="text/javascript">
        function setId(id) {
            thisForm.questionAnswerGroupId.value = id;
        }

        function resetForm() {
            thisForm.questionAnswerGroupName.value = '';
        }

    </script>
</head>
  <body>
  <s:form action="question_answer_group" id="question_answer_group">
  <s:hidden id="questionAnswerGroupId" name="questionAnswerGroupId"/>
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
                      <td width="43" background="../images/table004.gif"><img src="../images/table004.gif" width="43" height="37" alt=""></td>
                      <td>
                          <table width="100%" border="0" align="center" style="height:100%">
                              <tr>
                                  <td width="15%">
                                      <b>Question Group Name</b>
                                  </td>
                                  <td align="right">
                                      <c:if test="${sessionScope.menuAuthentication.qaGroupManage}">
                                          <input  type="button"id="butNewAdd" name="butNewAdd" class="button" value="Add Question Group" style="width:150px;" onclick="letsGo('question_answer_group_detail.action','')"/>
                                      </c:if>
                                  </td>
                              </tr>
                              <tr>
                                  <td colspan="2">
                                      <table width="100%" class="displayTable">
                                          <tr class="bgGreen2">
                                              <td class="label" width="20%">Question Group Name :</td>
                                              <td width="80%">
                                                  <s:textfield name="questionAnswerGroupName" id="questionAnswerGroupName" cssStyle="width:250px;"/>
                                              </td>
                                          </tr>
                                      </table>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="center" colspan="2">
                                      <s:submit name="search" id="btnSearch" method="search" value="Search" cssClass="button"/>  &nbsp;
                                      <input type="button" id="reset" name="reset" class="button" onclick="resetForm()" value="Reset"/>
                                    </td>
                              </tr>
                              <tr>
                                  <td colspan="2">
                                      <c:if test="${not empty requestScope.errorMgs}">
                                        <font color="red">${requestScope.errorMgs}</font> <br/>
                                 </c:if>
                                      <display:table name="${requestScope.questionAnswerGroupList}" id="obj"  cellpadding="0" cellspacing="1" export="false" class="displayTag" style="width:100%" requestURI="question_answer_group.action" pagesize="15">
                                          <display:column title="Question Group Name" property="questionGroupName" style="text-align:left;width:80%" headerClass="headerTable" sortable="true"/>
                                          <c:if test="${sessionScope.menuAuthentication.qaGroupManage}">
                                          <display:column title="Edit" style="text-align:center;width:10%" headerClass="headerTable" >
                                           <img src="../images/edit.gif" border="no" align="" onclick="letsGo('question_answer_group_detail.action','${obj.id}')" style="cursor:pointer">
                                          </display:column>
                                          <display:column title="Delete" style="text-align:center;width:10%" headerClass="headerTable">
                                              <div onmouseover="setId('${obj.id}');">
                                                  <s:submit method="delete" type="image" src="../images/delete.gif" onclick="return confirm('Do you want to delete this record ?')" title="Delete"/>
                                              </div>
                                          </display:column>
                                          </c:if>
                                      </display:table>
                                  </td>
                              </tr>
                              <tr>
                              </tr>
                          </table>
                      </td>
                      <td width="28" background="../images/table005.gif"><img src="../images/table005.gif" width="28"/>
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

   function letsGo(action, id) {
//       var reportName = document.getElementById("reportName").value;

//       pageLink1 = action + '?questionAnswerGroupId=' + id;
       <%--pageLink2 = '&<%=Constants.PublishDocumentField.REPORT_NAME_HIDDEN%>=' + reportName;--%>
       location.href = action + '?questionAnswerGroupId=' + id;
//       location.href = pageLink1.concat(pageLink2);
   }
   </script>
  </body>
</html>