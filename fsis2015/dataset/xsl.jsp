<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="org.apache.commons.lang.math.NumberUtils" %>
<%@ page import="th.go.mof.fpo.model.FileUpload" %>
<%@ page import="th.go.mof.fpo.model.ReportType" %>
<%@ page import="th.go.mof.fpo.model.UploadVersion" %>
<%@ page import="th.go.mof.fpo.model.dao.FileUploadDAO" %>
<%@ page import="th.go.mof.fpo.model.dao.ReportTypeDAO" %>
<%@ page import="th.go.mof.fpo.model.dao.UploadVersionDAO" %>
<%@ page import="javax.xml.transform.TransformerException" %>
<%@ page import="java.io.StringReader" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Specialized Financial Institutions Information System</title>
    <c:set var="file" value="<%=request.getParameter("name")%>"/>
    <link rel="stylesheet" type="text/css" href="../includes/css/style.css"/>
    <script type="text/javascript">
    </script>
</head>
<body>
        <%
            if (StringUtils.isNotEmpty(request.getParameter("name"))) {
                Integer uploadVersionId = NumberUtils.toInt(request.getParameter("name"));
                UploadVersion uploadVersion = new UploadVersionDAO().get(uploadVersionId);
                FileUpload fileUpload = new FileUploadDAO().get(uploadVersion.getFileUpload().getId());
                ReportType reportType = new ReportTypeDAO().getDataSetVersion(fileUpload.getDsVersion().getId());
                if (null != reportType) {
                    String s = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
                    String xml1 = s + "\n" + uploadVersion.getContent();
                    String xsl1 = s + "\n" + reportType.getContent();
                    StringReader xmlReader = new StringReader(xml1);
                    StringReader xslReader = new StringReader(xsl1);
                    javax.xml.transform.Source xmlSource = new javax.xml.transform.stream.StreamSource(xmlReader);
                    javax.xml.transform.Source xsltSource = new javax.xml.transform.stream.StreamSource(xslReader);
                    javax.xml.transform.Result result = new javax.xml.transform.stream.StreamResult(out);
                    // create an instance of TransformerFactory
                    javax.xml.transform.TransformerFactory transFact = javax.xml.transform.TransformerFactory.newInstance();
                    try{
                    javax.xml.transform.Transformer trans = null;
                    trans = transFact.newTransformer(xsltSource);
                    trans.transform(xmlSource, result);
                    }catch (TransformerException e){
                        e.printStackTrace();
                    }
                }
            }
        %>
 <br><br>
 <div align="center">
     <a href="../dataset/document_detail.action?uploadVersionId=${file}" class="button" style="height:18px;width:45px;vertical-align:middle;">&nbsp;back</a>
 </div>
 </table>
</body>
</html>
