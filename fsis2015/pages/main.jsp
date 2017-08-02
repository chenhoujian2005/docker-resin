<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: iRambo
  Date: Feb 14, 2012
  Time: 2:26:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <title>Simple jsp page</title>
  </head>
  <body>
  <FRAMESET ROWS="50%,*" noresize >
       <FRAME SRC="../pages/header.jsp" NAME=TITLE SCROLLING=NO noresize >
    <FRAMESET COLS="20%,*" noresize >
              <FRAME SRC="../pages/menu.jsp" NAME=SIDEBAR noresize >
              <FRAME SRC="body.jsp" NAME=RECIPES noresize >
         </FRAMESET>
</FRAMESET>

  <%--<frameset row="30%,*">--%>
     <%--<frame src="../pages/header.jsp" name="title" scrolling="no">--%>
     <%--<frameset cols="30%,*">--%>
        <%--<frame src="../pages/menu.jsp" name="title" scrolling="auto">--%>
        <%--<frame src="../pages/body.jsp" name="body" scrolling="auto"> --%>
     <%--</frameset>--%>
  <%--</frameset>--%>
 </body>
</html>