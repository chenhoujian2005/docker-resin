<%@ page contentType="text/xml;charset=UTF-8" language="java" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="org.apache.commons.lang.math.NumberUtils" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page import="th.go.mof.fpo.dataset.xml.DS_IPI" %>
<%@ page import="th.go.mof.fpo.model.UploadVersion" %>
<%@ page import="th.go.mof.fpo.model.dao.UploadVersionDAO" %>
<%
    //uploadVersionId = 320;
    if (StringUtils.isNotEmpty(request.getParameter(Constants.UPLOAD_VERSION_ID))) {
        Integer uploadVersionId = NumberUtils.toInt(request.getParameter(Constants.UPLOAD_VERSION_ID));
        UploadVersion uploadVersion = new UploadVersionDAO().get(uploadVersionId);
        if (null != uploadVersion) {
            String xml = uploadVersion.getContentXML();

            DS_IPI dataSet = new DS_IPI(xml);
            dataSet.process();
            dataSet.writeXML(response);

           /* PrintWriter writer = response.getWriter();
            response.setContentType("text/xml");
            ByteArrayOutputStream sos = new ByteArrayOutputStream();
            dataset.write(sos);
            String fileOutput = sos.toString();
            fileOutput = StringUtils.replace(fileOutput, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>", Constants.XML_HEADER + "\r\n" + "<?xml-stylesheet type=\"text/xsl\" href=\"../xsl/DS_IPI.xsl\"?> ");
            writer.write(fileOutput);*/
        }
    }
%>
