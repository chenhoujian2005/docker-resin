/*
 * JSP generated by Resin-3.1.9 (built Mon, 13 Apr 2009 11:09:12 PDT)
 */

package _jsp._sfis;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import th.go.mof.fpo.Constants;

public class _branch_0code__jsp extends com.caucho.jsp.JavaPage
{
  private static final java.util.HashMap<String,java.lang.reflect.Method> _jsp_functionMap = new java.util.HashMap<String,java.lang.reflect.Method>();
  private boolean _caucho_isDead;
  
  public void
  _jspService(javax.servlet.http.HttpServletRequest request,
              javax.servlet.http.HttpServletResponse response)
    throws java.io.IOException, javax.servlet.ServletException
  {
    javax.servlet.http.HttpSession session = request.getSession(true);
    com.caucho.server.webapp.WebApp _jsp_application = _caucho_getApplication();
    javax.servlet.ServletContext application = _jsp_application;
    com.caucho.jsp.PageContextImpl pageContext = _jsp_application.getJspApplicationContext().allocatePageContext(this, _jsp_application, request, response, null, session, 8192, true, false);
    javax.servlet.jsp.PageContext _jsp_parentContext = pageContext;
    javax.servlet.jsp.JspWriter out = pageContext.getOut();
    final javax.el.ELContext _jsp_env = pageContext.getELContext();
    javax.servlet.ServletConfig config = getServletConfig();
    javax.servlet.Servlet page = this;
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");
    org.apache.struts2.views.jsp.ui.FormTag _jsp_FormTag_0 = null;
    org.apache.struts2.views.jsp.ui.HiddenTag _jsp_HiddenTag_1 = null;
    org.apache.struts2.views.jsp.URLTag _jsp_URLTag_2 = null;
    org.apache.struts2.views.jsp.ui.AnchorTag _jsp_AnchorTag_3 = null;
    org.apache.struts2.views.jsp.ui.SelectTag _jsp_SelectTag_4 = null;
    org.apache.struts2.views.jsp.ui.TextFieldTag _jsp_TextFieldTag_5 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_6 = null;
    org.displaytag.tags.TableTag _jsp_TableTag_7 = null;
    org.displaytag.tags.ColumnTag _jsp_ColumnTag_8 = null;
    org.displaytag.tags.ColumnTag _jsp_ColumnTag_9 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_10 = null;
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
      com.caucho.jsp.BodyContentImpl _jsp_endTagHack0 = null;
      if (_jsp_FormTag_0 == null) {
        _jsp_FormTag_0 = new org.apache.struts2.views.jsp.ui.FormTag();
        _jsp_FormTag_0.setPageContext(pageContext);
        _jsp_FormTag_0.setParent((javax.servlet.jsp.tagext.Tag) null);
        _jsp_FormTag_0.setAction("branch_code");
        _jsp_FormTag_0.setEnctype("multipart/form-data");
      }

      int _jspEval2 = _jsp_FormTag_0.doStartTag();
      if (_jspEval2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspEval2 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
          out = pageContext.pushBody();
          _jsp_endTagHack0 = (com.caucho.jsp.BodyContentImpl) out;
          _jsp_FormTag_0.setBodyContent(_jsp_endTagHack0);
        }
        out.write('\n');
        if (_jsp_HiddenTag_1 == null) {
          _jsp_HiddenTag_1 = new org.apache.struts2.views.jsp.ui.HiddenTag();
          _jsp_HiddenTag_1.setPageContext(pageContext);
          _jsp_HiddenTag_1.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_HiddenTag_1.setId("deleteId");
          _jsp_HiddenTag_1.setName("deleteId");
        }

        int _jspEval5 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write(_jsp_string1, 0, _jsp_string1.length);
        if (_caucho_expr_0.evalBoolean(_jsp_env)) {
          out.write(_jsp_string2, 0, _jsp_string2.length);
        }
        out.write(_jsp_string3, 0, _jsp_string3.length);
        if (_jsp_URLTag_2 == null) {
          _jsp_URLTag_2 = new org.apache.struts2.views.jsp.URLTag();
          _jsp_URLTag_2.setPageContext(pageContext);
          _jsp_URLTag_2.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_URLTag_2.setAction("branch_code_download");
          _jsp_URLTag_2.setVar("aURL");
        }

        int _jspEval9 = _jsp_URLTag_2.doStartTag();
        _jsp_URLTag_2.doEndTag();
        out.write(_jsp_string4, 0, _jsp_string4.length);
        com.caucho.jsp.BodyContentImpl _jsp_endTagHack11 = null;
        if (_jsp_AnchorTag_3 == null) {
          _jsp_AnchorTag_3 = new org.apache.struts2.views.jsp.ui.AnchorTag();
          _jsp_AnchorTag_3.setPageContext(pageContext);
          _jsp_AnchorTag_3.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_AnchorTag_3.setHref("%{aURL}");
        }

        int _jspEval13 = _jsp_AnchorTag_3.doStartTag();
        if (_jspEval13 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          if (_jspEval13 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
            out = pageContext.pushBody();
            _jsp_endTagHack11 = (com.caucho.jsp.BodyContentImpl) out;
            _jsp_AnchorTag_3.setBodyContent(_jsp_endTagHack11);
          }
          out.write(_jsp_string5, 0, _jsp_string5.length);
          if (_jspEval13 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
            out = pageContext.popBody();
        }
        _jsp_AnchorTag_3.doEndTag();
        if (_jsp_endTagHack11 != null) {
          pageContext.releaseBody(_jsp_endTagHack11);
          _jsp_endTagHack11 = null;
        }
        out.write(_jsp_string6, 0, _jsp_string6.length);
        if (_jsp_SelectTag_4 == null) {
          _jsp_SelectTag_4 = new org.apache.struts2.views.jsp.ui.SelectTag();
          _jsp_SelectTag_4.setPageContext(pageContext);
          _jsp_SelectTag_4.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SelectTag_4.setList("sfiList");
          _jsp_SelectTag_4.setName("sfiId");
          _jsp_SelectTag_4.setId("sfiId");
          _jsp_SelectTag_4.setHeaderKey("");
          _jsp_SelectTag_4.setListKey("id");
          _jsp_SelectTag_4.setListValue("displayNameCodeAndCode");
          _jsp_SelectTag_4.setHeaderValue("-------------  Please Select  -------------");
        }

        int _jspEval17 = _jsp_SelectTag_4.doStartTag();
        _jsp_SelectTag_4.doEndTag();
        out.write(_jsp_string7, 0, _jsp_string7.length);
        if (_jsp_TextFieldTag_5 == null) {
          _jsp_TextFieldTag_5 = new org.apache.struts2.views.jsp.ui.TextFieldTag();
          _jsp_TextFieldTag_5.setPageContext(pageContext);
          _jsp_TextFieldTag_5.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_TextFieldTag_5.setId("branchCode");
          _jsp_TextFieldTag_5.setName("branchCode");
          _jsp_TextFieldTag_5.setMaxlength("4");
          _jsp_TextFieldTag_5.setSize("30");
        }

        int _jspEval21 = _jsp_TextFieldTag_5.doStartTag();
        _jsp_TextFieldTag_5.doEndTag();
        out.write(_jsp_string8, 0, _jsp_string8.length);
        if (_jsp_SubmitTag_6 == null) {
          _jsp_SubmitTag_6 = new org.apache.struts2.views.jsp.ui.SubmitTag();
          _jsp_SubmitTag_6.setPageContext(pageContext);
          _jsp_SubmitTag_6.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SubmitTag_6.setValue("Search");
          _jsp_SubmitTag_6.setId("btnSearch");
          _jsp_SubmitTag_6.setName("search");
          _jsp_SubmitTag_6.setMethod("search");
          _jsp_SubmitTag_6.setCssClass("button");
        }

        int _jspEval25 = _jsp_SubmitTag_6.doStartTag();
        _jsp_SubmitTag_6.doEndTag();
        out.write(_jsp_string9, 0, _jsp_string9.length);
        com.caucho.jsp.BodyContentImpl _jsp_endTagHack27 = null;
        if (_jsp_TableTag_7 == null) {
          _jsp_TableTag_7 = new org.displaytag.tags.TableTag();
          _jsp_TableTag_7.setPageContext(pageContext);
          _jsp_TableTag_7.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_TableTag_7.setUid("row");
          _jsp_TableTag_7.setExport(false);
          _jsp_TableTag_7.setClass("displayTag");
          _jsp_TableTag_7.setRequestURI("branch_code.action");
          _jsp_TableTag_7.setStyle("width:100%;text-align:center");
          _jsp_TableTag_7.setPagesize(25);
          _jsp_TableTag_7.setPartialList(true);
        }

        _jsp_TableTag_7.setName(_caucho_expr_1.evalObject(_jsp_env));
        _jsp_TableTag_7.setSize(_caucho_expr_2.evalObject(_jsp_env));
        _jsp_TableTag_7.doStartTag();
        out = pageContext.pushBody();
        _jsp_endTagHack27 = (com.caucho.jsp.BodyContentImpl) out;
        _jsp_TableTag_7.setBodyContent(_jsp_endTagHack27);
        do {
          out.write(_jsp_string10, 0, _jsp_string10.length);
          if (_jsp_ColumnTag_8 == null) {
            _jsp_ColumnTag_8 = new org.displaytag.tags.ColumnTag();
            _jsp_ColumnTag_8.setPageContext(pageContext);
            _jsp_ColumnTag_8.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_7);
            _jsp_ColumnTag_8.setHeaderClass("headerTable");
            _jsp_ColumnTag_8.setSortable(false);
          }

          _jsp_ColumnTag_8.setTitle("SFIs ID");
          _jsp_ColumnTag_8.setProperty("sfiDisplay");
          _jsp_ColumnTag_8.setStyle("text-align:center;");
          _jsp_ColumnTag_8.setSortName("sfiCode");
          int _jspEval32 = _jsp_ColumnTag_8.doStartTag();
          int _jsp_end_33 = _jsp_ColumnTag_8.doEndTag();
          if (_jsp_end_33 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
            return;
          out.write(_jsp_string10, 0, _jsp_string10.length);
          _jsp_ColumnTag_8.setTitle("BRANCH CODE");
          _jsp_ColumnTag_8.setProperty("branchCode");
          _jsp_ColumnTag_8.setStyle("text-align:center;");
          _jsp_ColumnTag_8.setSortName("branchCode");
          int _jspEval36 = _jsp_ColumnTag_8.doStartTag();
          int _jsp_end_37 = _jsp_ColumnTag_8.doEndTag();
          if (_jsp_end_37 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
            return;
          out.write(_jsp_string10, 0, _jsp_string10.length);
          _jsp_ColumnTag_8.setTitle("NAME (EN)");
          _jsp_ColumnTag_8.setProperty("nameEn");
          _jsp_ColumnTag_8.setStyle("text-align:left;");
          _jsp_ColumnTag_8.setSortName("nameEn");
          int _jspEval40 = _jsp_ColumnTag_8.doStartTag();
          int _jsp_end_41 = _jsp_ColumnTag_8.doEndTag();
          if (_jsp_end_41 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
            return;
          out.write(_jsp_string10, 0, _jsp_string10.length);
          _jsp_ColumnTag_8.setTitle("NAME (TH)");
          _jsp_ColumnTag_8.setProperty("nameTh");
          _jsp_ColumnTag_8.setStyle("text-align:left;");
          _jsp_ColumnTag_8.setSortName("nameTh");
          int _jspEval44 = _jsp_ColumnTag_8.doStartTag();
          int _jsp_end_45 = _jsp_ColumnTag_8.doEndTag();
          if (_jsp_end_45 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
            return;
          out.write(_jsp_string10, 0, _jsp_string10.length);
          _jsp_ColumnTag_8.setTitle("Area Name");
          _jsp_ColumnTag_8.setProperty("areaName");
          _jsp_ColumnTag_8.setStyle("text-align:left;");
          _jsp_ColumnTag_8.setSortName("areaName");
          int _jspEval48 = _jsp_ColumnTag_8.doStartTag();
          int _jsp_end_49 = _jsp_ColumnTag_8.doEndTag();
          if (_jsp_end_49 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
            return;
          out.write(_jsp_string10, 0, _jsp_string10.length);
          _jsp_ColumnTag_8.setTitle("Province Name");
          _jsp_ColumnTag_8.setProperty("provinceName");
          _jsp_ColumnTag_8.setStyle("text-align:left;");
          _jsp_ColumnTag_8.setSortName("provinceName");
          int _jspEval52 = _jsp_ColumnTag_8.doStartTag();
          int _jsp_end_53 = _jsp_ColumnTag_8.doEndTag();
          if (_jsp_end_53 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
            return;
          out.write(_jsp_string11, 0, _jsp_string11.length);
          if (_caucho_expr_0.evalBoolean(_jsp_env)) {
            out.write(_jsp_string10, 0, _jsp_string10.length);
            com.caucho.jsp.BodyContentImpl _jsp_endTagHack54 = null;
            if (_jsp_ColumnTag_9 == null) {
              _jsp_ColumnTag_9 = new org.displaytag.tags.ColumnTag();
              _jsp_ColumnTag_9.setPageContext(pageContext);
              _jsp_ColumnTag_9.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_7);
              _jsp_ColumnTag_9.setStyle("width:5%;text-align:center");
              _jsp_ColumnTag_9.setHeaderClass("headerTable");
            }

            _jsp_ColumnTag_9.setTitle("Edit");
            int _jspEval56 = _jsp_ColumnTag_9.doStartTag();
            if (_jspEval56 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
              if (_jspEval56 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
                out = pageContext.pushBody();
                _jsp_endTagHack54 = (com.caucho.jsp.BodyContentImpl) out;
                _jsp_ColumnTag_9.setBodyContent(_jsp_endTagHack54);
              }
              out.write(_jsp_string12, 0, _jsp_string12.length);
              _caucho_expr_3.print(out, _jsp_env, false);
              out.write(_jsp_string13, 0, _jsp_string13.length);
              if (_jspEval56 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
                out = pageContext.popBody();
            }
            int _jsp_end_57 = _jsp_ColumnTag_9.doEndTag();
            if (_jsp_endTagHack54 != null) {
              pageContext.releaseBody(_jsp_endTagHack54);
              _jsp_endTagHack54 = null;
            }
            if (_jsp_end_57 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
              return;
            out.write(_jsp_string10, 0, _jsp_string10.length);
            com.caucho.jsp.BodyContentImpl _jsp_endTagHack58 = null;
            if (_jsp_ColumnTag_9 == null) {
              _jsp_ColumnTag_9 = new org.displaytag.tags.ColumnTag();
              _jsp_ColumnTag_9.setPageContext(pageContext);
              _jsp_ColumnTag_9.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_7);
              _jsp_ColumnTag_9.setStyle("width:5%;text-align:center");
              _jsp_ColumnTag_9.setHeaderClass("headerTable");
            }

            _jsp_ColumnTag_9.setTitle("Delete");
            int _jspEval60 = _jsp_ColumnTag_9.doStartTag();
            if (_jspEval60 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
              if (_jspEval60 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
                out = pageContext.pushBody();
                _jsp_endTagHack58 = (com.caucho.jsp.BodyContentImpl) out;
                _jsp_ColumnTag_9.setBodyContent(_jsp_endTagHack58);
              }
              out.write(_jsp_string14, 0, _jsp_string14.length);
              _caucho_expr_3.print(out, _jsp_env, false);
              out.write(_jsp_string15, 0, _jsp_string15.length);
              if (_jsp_SubmitTag_10 == null) {
                _jsp_SubmitTag_10 = new org.apache.struts2.views.jsp.ui.SubmitTag();
                _jsp_SubmitTag_10.setPageContext(pageContext);
                _jsp_SubmitTag_10.setParent((javax.servlet.jsp.tagext.Tag) _jsp_ColumnTag_9);
                _jsp_SubmitTag_10.setMethod("delete");
                _jsp_SubmitTag_10.setTitle("Delete");
                _jsp_SubmitTag_10.setType("image");
                _jsp_SubmitTag_10.setSrc("../images/delete.gif");
                _jsp_SubmitTag_10.setOnclick("return confirm('Do you want to delete this record ?')");
              }

              int _jspEval63 = _jsp_SubmitTag_10.doStartTag();
              _jsp_SubmitTag_10.doEndTag();
              out.write(_jsp_string16, 0, _jsp_string16.length);
              if (_jspEval60 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
                out = pageContext.popBody();
            }
            int _jsp_end_65 = _jsp_ColumnTag_9.doEndTag();
            if (_jsp_endTagHack58 != null) {
              pageContext.releaseBody(_jsp_endTagHack58);
              _jsp_endTagHack58 = null;
            }
            if (_jsp_end_65 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
              return;
            out.write(_jsp_string11, 0, _jsp_string11.length);
          }
          out.write(_jsp_string17, 0, _jsp_string17.length);
        } while (_jsp_TableTag_7.doAfterBody() == javax.servlet.jsp.tagext.IterationTag.EVAL_BODY_AGAIN);
        out = pageContext.popBody();
        int _jsp_end_66 = _jsp_TableTag_7.doEndTag();
        pageContext.releaseBody(_jsp_endTagHack27);
        if (_jsp_end_66 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
          return;
        out.write(_jsp_string18, 0, _jsp_string18.length);
        if (_jspEval2 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
          out = pageContext.popBody();
      }
      _jsp_FormTag_0.doEndTag();
      if (_jsp_endTagHack0 != null) {
        pageContext.releaseBody(_jsp_endTagHack0);
        _jsp_endTagHack0 = null;
      }
      out.write(_jsp_string19, 0, _jsp_string19.length);
      out.print((Constants.BranchCodeField.SFI_HIDDEN));
      out.write(_jsp_string20, 0, _jsp_string20.length);
      out.print((Constants.BranchCodeField.BRANCH_CODE_HIDDEN));
      out.write(_jsp_string21, 0, _jsp_string21.length);
    } catch (java.lang.Throwable _jsp_e) {
      pageContext.handlePageException(_jsp_e);
    } finally {
      if (_jsp_FormTag_0 != null)
        _jsp_FormTag_0.release();
      if (_jsp_HiddenTag_1 != null)
        _jsp_HiddenTag_1.release();
      if (_jsp_URLTag_2 != null)
        _jsp_URLTag_2.release();
      if (_jsp_AnchorTag_3 != null)
        _jsp_AnchorTag_3.release();
      if (_jsp_SelectTag_4 != null)
        _jsp_SelectTag_4.release();
      if (_jsp_TextFieldTag_5 != null)
        _jsp_TextFieldTag_5.release();
      if (_jsp_SubmitTag_6 != null)
        _jsp_SubmitTag_6.release();
      if (_jsp_TableTag_7 != null)
        _jsp_TableTag_7.release();
      if (_jsp_ColumnTag_8 != null)
        _jsp_ColumnTag_8.release();
      if (_jsp_ColumnTag_9 != null)
        _jsp_ColumnTag_9.release();
      if (_jsp_SubmitTag_10 != null)
        _jsp_SubmitTag_10.release();
      _jsp_application.getJspApplicationContext().freePageContext(pageContext);
    }
  }

  private java.util.ArrayList _caucho_depends = new java.util.ArrayList();

  public java.util.ArrayList _caucho_getDependList()
  {
    return _caucho_depends;
  }

  public void _caucho_addDepend(com.caucho.vfs.PersistentDependency depend)
  {
    super._caucho_addDepend(depend);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  public boolean _caucho_isModified()
  {
    if (_caucho_isDead)
      return true;
    if (com.caucho.server.util.CauchoSystem.getVersionId() != 5783496155892875126L)
      return true;
    for (int i = _caucho_depends.size() - 1; i >= 0; i--) {
      com.caucho.vfs.Dependency depend;
      depend = (com.caucho.vfs.Dependency) _caucho_depends.get(i);
      if (depend.isModified())
        return true;
    }
    return false;
  }

  public long _caucho_lastModified()
  {
    return 0;
  }

  public java.util.HashMap<String,java.lang.reflect.Method> _caucho_getFunctionMap()
  {
    return _jsp_functionMap;
  }

  public void init(ServletConfig config)
    throws ServletException
  {
    com.caucho.server.webapp.WebApp webApp
      = (com.caucho.server.webapp.WebApp) config.getServletContext();
    super.init(config);
    com.caucho.jsp.TaglibManager manager = webApp.getJspApplicationContext().getTaglibManager();
    manager.addTaglibFunctions(_jsp_functionMap, "s", "/struts-tags");
    manager.addTaglibFunctions(_jsp_functionMap, "display", "http://displaytag.sf.net");
    manager.addTaglibFunctions(_jsp_functionMap, "c", "http://java.sun.com/jstl/core");
    com.caucho.jsp.PageContextImpl pageContext = new com.caucho.jsp.PageContextImpl(webApp, this);
    _caucho_expr_0 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${sessionScope.menuAuthentication.branchCodeManage}");
    _caucho_expr_1 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.branchList}");
    _caucho_expr_2 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${totalRecord}");
    _caucho_expr_3 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${row.id}");
  }

  public void destroy()
  {
      _caucho_isDead = true;
      super.destroy();
  }

  public void init(com.caucho.vfs.Path appDir)
    throws javax.servlet.ServletException
  {
    com.caucho.vfs.Path resinHome = com.caucho.server.util.CauchoSystem.getResinHome();
    com.caucho.vfs.MergePath mergePath = new com.caucho.vfs.MergePath();
    mergePath.addMergePath(appDir);
    mergePath.addMergePath(resinHome);
    com.caucho.loader.DynamicClassLoader loader;
    loader = (com.caucho.loader.DynamicClassLoader) getClass().getClassLoader();
    String resourcePath = loader.getResourcePathSpecificFirst();
    mergePath.addClassPath(resourcePath);
    com.caucho.vfs.Depend depend;
    depend = new com.caucho.vfs.Depend(appDir.lookup("sfis/branch_code.jsp"), 7778429929709680400L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    depend = new com.caucho.vfs.Depend(mergePath.lookup("jar:file:/J:/sfi-web-resin2/webapps/fsis2015/WEB-INF/lib/struts2-core-2.1.6.jar!/META-INF/struts-tags.tld"), 4562940134640561417L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.HiddenTag.class, -3857856297974974455L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.URLTag.class, -6836769909796858251L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.AnchorTag.class, -8404039777165872107L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.SelectTag.class, 3107940694844445683L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.TextFieldTag.class, -5073161277586165321L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.SubmitTag.class, 2704927420214496830L));
    depend = new com.caucho.vfs.Depend(mergePath.lookup("jar:file:/J:/sfi-web-resin2/webapps/fsis2015/WEB-INF/lib/displaytag-1.2.jar!/META-INF/displaytag.tld"), 896317080647301760L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.displaytag.tags.ColumnTag.class, 3633639539590261819L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.displaytag.tags.TableTag.class, 1759241151551486737L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.displaytag.tags.TableTagExtraInfo.class, -3129675564509571970L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.FormTag.class, -3000898630992437772L));
  }

  static {
    try {
    } catch (Exception e) {
      e.printStackTrace();
      throw new RuntimeException(e);
    }
  }
  private static com.caucho.el.Expr _caucho_expr_0;
  private static com.caucho.el.Expr _caucho_expr_1;
  private static com.caucho.el.Expr _caucho_expr_2;
  private static com.caucho.el.Expr _caucho_expr_3;

  private final static char []_jsp_string10;
  private final static char []_jsp_string8;
  private final static char []_jsp_string16;
  private final static char []_jsp_string14;
  private final static char []_jsp_string11;
  private final static char []_jsp_string6;
  private final static char []_jsp_string1;
  private final static char []_jsp_string7;
  private final static char []_jsp_string21;
  private final static char []_jsp_string19;
  private final static char []_jsp_string0;
  private final static char []_jsp_string2;
  private final static char []_jsp_string5;
  private final static char []_jsp_string15;
  private final static char []_jsp_string17;
  private final static char []_jsp_string9;
  private final static char []_jsp_string13;
  private final static char []_jsp_string4;
  private final static char []_jsp_string18;
  private final static char []_jsp_string12;
  private final static char []_jsp_string20;
  private final static char []_jsp_string3;
  static {
    _jsp_string10 = "\n                                ".toCharArray();
    _jsp_string8 = "</td>\n                                        </tr>\n                                        </table>\n                                    </td>\n                                </tr>\n\n                            </table>\n                            <table width=\"100%\">\n                                        <tr>\n                                            <td align=\"center\">\n                                                ".toCharArray();
    _jsp_string16 = "\n                                 </div>\n                                ".toCharArray();
    _jsp_string14 = "\n                                   <div onMouseOver=\"setId('".toCharArray();
    _jsp_string11 = "\n                             ".toCharArray();
    _jsp_string6 = "\n                                        \n                                    </td>\n                                </tr>\n                                <tr>\n                                    <td colspan=\"2\">\n                                        <table width=\"100%\" class=\"displayTable\">\n                                         <tr valign=\"middle\" class=\"bgGreen2\">\n                                            <td width=\"20%\" class=\"label\">SFIs :</td>\n                                            <td width=\"80%\" colspan=\"2\">\n                                                ".toCharArray();
    _jsp_string1 = "\n    <table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n        <tr>\n            <td>\n                <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                    <tr>\n                        <td width=\"43\"><img src=\"../images/table001.gif\" width=\"43\" height=\"43\" alt=\"\"></td>\n                        <td background=\"../images/table002.gif\">&nbsp;</td>\n                        <td width=\"173\"><img src=\"../images/table003.gif\" width=\"173\" height=\"43\" alt=\"\"></td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n        <tr>\n            <td>\n                <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                    <tr>\n                        <td width=\"43\" background=\"../images/table004.gif\">\n                            <img src=\"../images/table004.gif\" width=\"43\" height=\"37\" alt=\"\">\n                        </td>\n                        <td>\n                            <table width=\"100%\" border=\"0\" align=\"center\" style=\"height:100%\">\n                                <tr>\n                                    <td align=\"left\" width=\"50%\"><b>Branch Code</b></td>\n                                    <td align=\"right\" width=\"50%\">\n                                        ".toCharArray();
    _jsp_string7 = "\n                                            </td>\n                                        </tr>\n                                        <tr valign=\"middle\" class=\"bgGreen1\">\n                                            <td class=\"label\">Branch Code :</td>\n                                            <td colspan=\"2\">".toCharArray();
    _jsp_string21 = "=' + branchCode;\n\n        location.href = pageLink1.concat(pageLink2, pageLink3);\n    }\n</script>\n</body>\n</html>".toCharArray();
    _jsp_string19 = "\n<script type=\"text/javascript\">\n    function letsGo(action, id) {\n        var sfi = document.getElementById(\"sfiId\").value;\n        var branchCode = document.getElementById(\"branchCode\").value;\n\n        pageLink1 = action + '?id=' + id;\n        pageLink2 = '&".toCharArray();
    _jsp_string0 = "\n\n\n\n\n<html>\n<head><title>Simple jsp page</title>\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"../includes/css/style.css\">\n    <script type=\"text/javascript\">\n        function setId(id) {\n            var thisForm = document.getElementsByTagName('form')[0];\n            thisForm.deleteId.value = id;\n        }\n\n        function resetForm() {\n            document.getElementById('sfiId').selectedIndex = 0;\n            document.getElementById('branchCode').value = \"\";\n        }\n    </script>\n</head>\n<body>\n".toCharArray();
    _jsp_string2 = "\n                                            \n                                            \n                                            <input type=\"button\" name=\"butUpload\" id=\"butUpload\" class=\"button\" value=\"Upload File\" style=\"width:150px\" onclick=\"letsGo('branch_code_detail.action','')\"/>\n                                            <input type=\"button\" name=\"butNewAdd\" id=\"butNewAdd\" class=\"button\" value=\"Add Branch Code\" style=\"width:150px\" onclick=\"letsGo('branch_code_show_detail.action','')\"/>\n                                        ".toCharArray();
    _jsp_string5 = "\u0e14\u0e32\u0e27\u0e19\u0e4c\u0e42\u0e2b\u0e25\u0e14 SFIs_Branch.xls".toCharArray();
    _jsp_string15 = "');\">\n                                      ".toCharArray();
    _jsp_string17 = "\n\n                            ".toCharArray();
    _jsp_string9 = "&nbsp;\n                                                <button class=\"button\" onclick=\"resetForm()\">Reset</button>\n                                            </td>\n                                        </tr>\n                                    </table>\n                              <br>\n                            ".toCharArray();
    _jsp_string13 = "')\" style=\"cursor:pointer\"/>  \n                                ".toCharArray();
    _jsp_string4 = "\n                                            <b>Download Branch Code File</b> &nbsp; : &nbsp;".toCharArray();
    _jsp_string18 = "\n                        </td>\n                        <td width=\"28\" background=\"../images/table005.gif\">\n                            <img src=\"../images/table005.gif\" width=\"28\" height=\"37\" alt=\"\">\n                        </td>\n                    </tr>\n                    <tr>\n                        <td><img src=\"../images/table006.gif\" width=\"43\" height=\"23\" alt=\"\"></td>\n                        <td background=\"../images/table007.gif\"></TD>\n                        <td><img src=\"../images/table008.gif\" width=\"28\" height=\"23\" alt=\"\"></td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n".toCharArray();
    _jsp_string12 = "\n                                    <img src=\"../images/edit.gif \" border=\"no\" title=\"Edit\" onclick=\"letsGo('branch_code_show_detail.action','".toCharArray();
    _jsp_string20 = "=' + sfi;\n        pageLink3 = '&".toCharArray();
    _jsp_string3 = "\n                                    </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" colspan=\"2\">\n                                        \n                                            \n                                            ".toCharArray();
  }
}