<%@ page contentType="text/xml;charset=UTF-8" language="java" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="org.apache.commons.lang.math.NumberUtils" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page import="th.go.mof.fpo.model.UploadVersion" %>
<%@ page import="th.go.mof.fpo.model.dao.UploadVersionDAO" %>
<%@ page import="th.go.mof.fpo.dataset.xml.DS_OPR" %>
<%

    //uploadVersionId = 240;
    if (StringUtils.isNotEmpty(request.getParameter(Constants.UPLOAD_VERSION_ID))) {
        Integer uploadVersionId = NumberUtils.toInt(request.getParameter(Constants.UPLOAD_VERSION_ID));

        UploadVersion uploadVersion = new UploadVersionDAO().get(uploadVersionId);
        if (null != uploadVersion) {
            String xml = uploadVersion.getContentXML();

            DS_OPR dataSet = new DS_OPR(xml);
            dataSet.process();
            dataSet.writeXML(response);


        }
    }
%>
