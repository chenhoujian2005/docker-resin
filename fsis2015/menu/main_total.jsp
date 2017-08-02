<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--<%@ taglib prefix="html" uri="http://struts.apache.org/tags-html" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Specialized Financial Institutions Information System</title>
    <script type="text/javascript" src="../includes/js/tp/utils.js"></script>
    <script type="text/javascript" src="../includes/jsTree/_lib/jquery.js"></script>
    <script type="text/javascript" src="../includes/jsTree/jquery.jstree.js"></script>
    <style type="text/css">
        html, body {
            font-size: 11px;
            font-family: "Ms Sans Serif";
            overflow-x: hidden;
            overflow-y: hidden;
            margin: 0px;
            padding: 0px;
            height: 100%;
            border: none;
        }
    </style>
</head>
<s:form action="main" cssStyle="width:100%;height:100%">
    <frameset ROWS="90px,*" border="0" frameborder="0" framespacing="0" fram noresize>
        <frame SRC="../pages/header.jsp" name="headerFrame" padding=0 spacing=0 border=0 scrolling="no" noresize>
        <frameset COLS="250,*" noresize>
            <frame SRC="../pages/menu.jsp" name=menuFrame noresize>
            <frame SRC="../pages/body.jsp" name=bodyFrame noresize>
        </frameset>
    </frameset>
    <%--<frameset ROWS="101px,*" border="0" frameborder="0" framespacing="0" fram noresize>--%>
        <%--<frame SRC="../pages/header.jsp" name="headerFrame" padding=0 spacing=0 border=0 scrolling="no" noresize>--%>
        <%--<frameset COLS="250,*" noresize>--%>
            <%--<frame SRC="../pages/menu.jsp" name=menuFrame noresize>--%>
            <%--<frame SRC="../pages/body.jsp" name=bodyFrame noresize>--%>
        <%--</frameset>--%>
    <%--</frameset>--%>
</s:form>
</html>