<%--
  Created by IntelliJ IDEA.
  User: jrambo
  Date: Dec 1, 2011
  Time: 3:07:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page isErrorPage="true" %>
<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exceptional Even Occurred!</title>
    <style>
        body, p {
            font-family: Tahoma;
            font-size: 10pt;
            padding-left: 30;
        }

        pre {
            font-size: 8pt;
        }
    </style>
</head>
<body>

<%-- Exception Handler --%>
<%--<font color="red">--%>
    <%--<%= exception.toString() %><br>--%>
<%--</font>--%>

<%
    out.println("<!--");
    StringWriter sw = new StringWriter();
    PrintWriter pw = new PrintWriter(sw);
    exception.printStackTrace(pw);
    out.print(sw);
    sw.close();
    pw.close();
    out.println("-->");
%>

</body>
</html>