<%@ page contentType="text/xml;charset=UTF-8" language="java" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ page import="org.apache.commons.lang.math.NumberUtils" %>
<%@ page import="th.go.mof.fpo.Constants" %>
<%@ page import="th.go.mof.fpo.dataset.xml.Dataset" %>
<%@ page import="th.go.mof.fpo.dataset.xml.DatasetFactory" %>
<%@ page import="th.go.mof.fpo.model.UploadVersion" %>
<%@ page import="th.go.mof.fpo.model.dao.UploadVersionDAO" %>
<%@ page import="th.go.mof.fpo.model.ClassificationVersion" %>
<%@ page import="th.go.mof.fpo.utils.ClassificationUtils" %>
<%@ page import="th.go.mof.fpo.model.ISICVersion" %>
<%
     if (StringUtils.isNotEmpty(request.getParameter(Constants.ID))) {
        int id = NumberUtils.toInt(request.getParameter(Constants.ID));
        UploadVersion version = new UploadVersionDAO().get(id);

        if (version != null) {
            String dataSetName = version.getFileUpload().getDsTitle3().getName();
            ClassificationVersion cv = ClassificationUtils.getClassificationVersion(version.getFileUpload());
            ISICVersion isicVersion = ClassificationUtils.getIsicCodeVersion(version.getFileUpload());
            String dsVersion = request.getParameter("dsVersion");
            String xml = version.getContentXML();
            DatasetFactory factory = DatasetFactory.newInstance();
            String name = Dataset.prepareDsName(dataSetName.toUpperCase());
            Dataset ds = factory.newDataset(name);
            ds.loadXML(xml);
            ds.setClassificationVersion(cv);
            ds.setIsicVersion(isicVersion);

            ds.process();
            ds.writeXML(response,dsVersion);
        }
    }

%>