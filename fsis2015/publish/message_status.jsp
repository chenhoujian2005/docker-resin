<%--
  Created by IntelliJ IDEA.
  User: Witsanu
  Date: 16 มิ.ย. 2557
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title></title>
    <script type="text/javascript">

        function chkErr() {
            if(document.getElementsByName('errrMassage').value != '')
            {
                alert("No Connection");
                window.location="view_publish_document.action";
            }
        }

    </script>
</head>
<body onload="chkErr()">
<s:form action="download_publish_document">
<s:hidden id="errrMassage" name="errrMassage"/>
</s:form>

</body>
</html>
