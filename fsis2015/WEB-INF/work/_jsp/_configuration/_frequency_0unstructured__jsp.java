/*
 * JSP generated by Resin-3.1.9 (built Mon, 13 Apr 2009 11:09:12 PDT)
 */

package _jsp._configuration;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import th.go.mof.fpo.Constants;

public class _frequency_0unstructured__jsp extends com.caucho.jsp.JavaPage
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
    org.apache.struts2.views.jsp.ui.SelectTag _jsp_SelectTag_2 = null;
    org.apache.struts2.views.jsp.ui.TextFieldTag _jsp_TextFieldTag_3 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_4 = null;
    org.displaytag.tags.TableTag _jsp_TableTag_5 = null;
    org.displaytag.tags.ColumnTag _jsp_ColumnTag_6 = null;
    org.displaytag.tags.ColumnTag _jsp_ColumnTag_7 = null;
    org.displaytag.tags.ColumnTag _jsp_ColumnTag_8 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_9 = null;
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
      com.caucho.jsp.BodyContentImpl _jsp_endTagHack0 = null;
      if (_jsp_FormTag_0 == null) {
        _jsp_FormTag_0 = new org.apache.struts2.views.jsp.ui.FormTag();
        _jsp_FormTag_0.setPageContext(pageContext);
        _jsp_FormTag_0.setParent((javax.servlet.jsp.tagext.Tag) null);
        _jsp_FormTag_0.setAction("frequency_unstructured");
      }

      int _jspEval2 = _jsp_FormTag_0.doStartTag();
      if (_jspEval2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspEval2 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
          out = pageContext.pushBody();
          _jsp_endTagHack0 = (com.caucho.jsp.BodyContentImpl) out;
          _jsp_FormTag_0.setBodyContent(_jsp_endTagHack0);
        }
        out.write(_jsp_string1, 0, _jsp_string1.length);
        if (_jsp_HiddenTag_1 == null) {
          _jsp_HiddenTag_1 = new org.apache.struts2.views.jsp.ui.HiddenTag();
          _jsp_HiddenTag_1.setPageContext(pageContext);
          _jsp_HiddenTag_1.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_HiddenTag_1.setName("id");
        }

        int _jspEval5 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write(_jsp_string2, 0, _jsp_string2.length);
        if (_caucho_expr_0.evalBoolean(_jsp_env)) {
          out.write(_jsp_string3, 0, _jsp_string3.length);
        }
        out.write(_jsp_string4, 0, _jsp_string4.length);
        if (_caucho_expr_1.evalBoolean(_jsp_env)) {
          out.write(_jsp_string5, 0, _jsp_string5.length);
          if (_jsp_SelectTag_2 == null) {
            _jsp_SelectTag_2 = new org.apache.struts2.views.jsp.ui.SelectTag();
            _jsp_SelectTag_2.setPageContext(pageContext);
            _jsp_SelectTag_2.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
            _jsp_SelectTag_2.setList("sfiRightList");
            _jsp_SelectTag_2.setName("sfi");
            _jsp_SelectTag_2.setId("sfi");
            _jsp_SelectTag_2.setListKey("id");
            _jsp_SelectTag_2.setListValue("displayNameCodeAndCode");
            _jsp_SelectTag_2.setHeaderKey("");
            _jsp_SelectTag_2.setHeaderValue("-------------------------------------  Please Select  -------------------------------------");
          }

          int _jspEval9 = _jsp_SelectTag_2.doStartTag();
          _jsp_SelectTag_2.doEndTag();
          out.write(_jsp_string6, 0, _jsp_string6.length);
          if (_jsp_TextFieldTag_3 == null) {
            _jsp_TextFieldTag_3 = new org.apache.struts2.views.jsp.ui.TextFieldTag();
            _jsp_TextFieldTag_3.setPageContext(pageContext);
            _jsp_TextFieldTag_3.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
            _jsp_TextFieldTag_3.setReadonly("true");
            _jsp_TextFieldTag_3.setSize("8");
          }

          _jsp_TextFieldTag_3.setName("dateFrom");
          _jsp_TextFieldTag_3.setId("dateFrom");
          int _jspEval13 = _jsp_TextFieldTag_3.doStartTag();
          _jsp_TextFieldTag_3.doEndTag();
          out.write(_jsp_string7, 0, _jsp_string7.length);
          if (_jsp_TextFieldTag_3 == null) {
            _jsp_TextFieldTag_3 = new org.apache.struts2.views.jsp.ui.TextFieldTag();
            _jsp_TextFieldTag_3.setPageContext(pageContext);
            _jsp_TextFieldTag_3.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
            _jsp_TextFieldTag_3.setReadonly("true");
            _jsp_TextFieldTag_3.setSize("8");
          }

          _jsp_TextFieldTag_3.setName("dateTo");
          _jsp_TextFieldTag_3.setId("dateTo");
          int _jspEval17 = _jsp_TextFieldTag_3.doStartTag();
          _jsp_TextFieldTag_3.doEndTag();
          out.write(_jsp_string8, 0, _jsp_string8.length);
          if (_jsp_SubmitTag_4 == null) {
            _jsp_SubmitTag_4 = new org.apache.struts2.views.jsp.ui.SubmitTag();
            _jsp_SubmitTag_4.setPageContext(pageContext);
            _jsp_SubmitTag_4.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
            _jsp_SubmitTag_4.setMethod("search");
            _jsp_SubmitTag_4.setId("btnSearch");
            _jsp_SubmitTag_4.setCssClass("button");
            _jsp_SubmitTag_4.setValue("Search");
          }

          int _jspEval21 = _jsp_SubmitTag_4.doStartTag();
          _jsp_SubmitTag_4.doEndTag();
          out.write(_jsp_string9, 0, _jsp_string9.length);
          com.caucho.jsp.BodyContentImpl _jsp_endTagHack23 = null;
          if (_jsp_TableTag_5 == null) {
            _jsp_TableTag_5 = new org.displaytag.tags.TableTag();
            _jsp_TableTag_5.setPageContext(pageContext);
            _jsp_TableTag_5.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
            _jsp_TableTag_5.setName("mainList");
            _jsp_TableTag_5.setUid("row");
            _jsp_TableTag_5.setExport(false);
            _jsp_TableTag_5.setClass("displayTag");
            _jsp_TableTag_5.setStyle("width:100%");
            _jsp_TableTag_5.setPagesize(20);
            _jsp_TableTag_5.setRequestURI("frequency_unstructured.action");
          }

          _jsp_TableTag_5.doStartTag();
          out = pageContext.pushBody();
          _jsp_endTagHack23 = (com.caucho.jsp.BodyContentImpl) out;
          _jsp_TableTag_5.setBodyContent(_jsp_endTagHack23);
          do {
            out.write(_jsp_string10, 0, _jsp_string10.length);
            com.caucho.jsp.BodyContentImpl _jsp_endTagHack26 = null;
            if (_jsp_ColumnTag_6 == null) {
              _jsp_ColumnTag_6 = new org.displaytag.tags.ColumnTag();
              _jsp_ColumnTag_6.setPageContext(pageContext);
              _jsp_ColumnTag_6.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_5);
              _jsp_ColumnTag_6.setTitle("SFIs Name");
              _jsp_ColumnTag_6.setHeaderClass("headerTable");
              _jsp_ColumnTag_6.setStyle("text-align:left;width:40%");
              _jsp_ColumnTag_6.setSortable(true);
            }

            int _jspEval28 = _jsp_ColumnTag_6.doStartTag();
            if (_jspEval28 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
              if (_jspEval28 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
                out = pageContext.pushBody();
                _jsp_endTagHack26 = (com.caucho.jsp.BodyContentImpl) out;
                _jsp_ColumnTag_6.setBodyContent(_jsp_endTagHack26);
              }
              out.write(_jsp_string11, 0, _jsp_string11.length);
              _caucho_expr_2.print(out, _jsp_env, false);
              out.write(_jsp_string12, 0, _jsp_string12.length);
              _caucho_expr_3.print(out, _jsp_env, false);
              out.write(_jsp_string13, 0, _jsp_string13.length);
              if (_jspEval28 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
                out = pageContext.popBody();
            }
            int _jsp_end_29 = _jsp_ColumnTag_6.doEndTag();
            if (_jsp_endTagHack26 != null) {
              pageContext.releaseBody(_jsp_endTagHack26);
              _jsp_endTagHack26 = null;
            }
            if (_jsp_end_29 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
              return;
            out.write(_jsp_string10, 0, _jsp_string10.length);
            if (_jsp_ColumnTag_7 == null) {
              _jsp_ColumnTag_7 = new org.displaytag.tags.ColumnTag();
              _jsp_ColumnTag_7.setPageContext(pageContext);
              _jsp_ColumnTag_7.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_5);
              _jsp_ColumnTag_7.setFormat("{0,date,dd MMM yyyy}");
              _jsp_ColumnTag_7.setHeaderClass("headerTable");
              _jsp_ColumnTag_7.setStyle("text-align:center;width:17%");
              _jsp_ColumnTag_7.setSortable(true);
            }

            _jsp_ColumnTag_7.setTitle("Dataset Date From");
            _jsp_ColumnTag_7.setProperty("dateFrom");
            int _jspEval32 = _jsp_ColumnTag_7.doStartTag();
            int _jsp_end_33 = _jsp_ColumnTag_7.doEndTag();
            if (_jsp_end_33 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
              return;
            out.write(_jsp_string10, 0, _jsp_string10.length);
            _jsp_ColumnTag_7.setTitle("Dataset Date To");
            _jsp_ColumnTag_7.setProperty("dateTo");
            int _jspEval36 = _jsp_ColumnTag_7.doStartTag();
            int _jsp_end_37 = _jsp_ColumnTag_7.doEndTag();
            if (_jsp_end_37 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
              return;
            out.write(_jsp_string10, 0, _jsp_string10.length);
            if (_caucho_expr_0.evalBoolean(_jsp_env)) {
              out.write(_jsp_string14, 0, _jsp_string14.length);
              com.caucho.jsp.BodyContentImpl _jsp_endTagHack38 = null;
              if (_jsp_ColumnTag_8 == null) {
                _jsp_ColumnTag_8 = new org.displaytag.tags.ColumnTag();
                _jsp_ColumnTag_8.setPageContext(pageContext);
                _jsp_ColumnTag_8.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_5);
                _jsp_ColumnTag_8.setHeaderClass("headerTable");
                _jsp_ColumnTag_8.setStyle("text-align:center;width:9%");
              }

              _jsp_ColumnTag_8.setTitle("Copy");
              int _jspEval40 = _jsp_ColumnTag_8.doStartTag();
              if (_jspEval40 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                if (_jspEval40 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
                  out = pageContext.pushBody();
                  _jsp_endTagHack38 = (com.caucho.jsp.BodyContentImpl) out;
                  _jsp_ColumnTag_8.setBodyContent(_jsp_endTagHack38);
                }
                out.write(_jsp_string15, 0, _jsp_string15.length);
                _caucho_expr_2.print(out, _jsp_env, false);
                out.write(_jsp_string16, 0, _jsp_string16.length);
                if (_jspEval40 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
                  out = pageContext.popBody();
              }
              int _jsp_end_41 = _jsp_ColumnTag_8.doEndTag();
              if (_jsp_endTagHack38 != null) {
                pageContext.releaseBody(_jsp_endTagHack38);
                _jsp_endTagHack38 = null;
              }
              if (_jsp_end_41 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
                return;
              out.write(_jsp_string14, 0, _jsp_string14.length);
              com.caucho.jsp.BodyContentImpl _jsp_endTagHack42 = null;
              if (_jsp_ColumnTag_8 == null) {
                _jsp_ColumnTag_8 = new org.displaytag.tags.ColumnTag();
                _jsp_ColumnTag_8.setPageContext(pageContext);
                _jsp_ColumnTag_8.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_5);
                _jsp_ColumnTag_8.setHeaderClass("headerTable");
                _jsp_ColumnTag_8.setStyle("text-align:center;width:9%");
              }

              _jsp_ColumnTag_8.setTitle("Edit");
              int _jspEval44 = _jsp_ColumnTag_8.doStartTag();
              if (_jspEval44 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                if (_jspEval44 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
                  out = pageContext.pushBody();
                  _jsp_endTagHack42 = (com.caucho.jsp.BodyContentImpl) out;
                  _jsp_ColumnTag_8.setBodyContent(_jsp_endTagHack42);
                }
                out.write(_jsp_string17, 0, _jsp_string17.length);
                _caucho_expr_2.print(out, _jsp_env, false);
                out.write(_jsp_string16, 0, _jsp_string16.length);
                if (_jspEval44 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
                  out = pageContext.popBody();
              }
              int _jsp_end_45 = _jsp_ColumnTag_8.doEndTag();
              if (_jsp_endTagHack42 != null) {
                pageContext.releaseBody(_jsp_endTagHack42);
                _jsp_endTagHack42 = null;
              }
              if (_jsp_end_45 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
                return;
              out.write(_jsp_string14, 0, _jsp_string14.length);
              com.caucho.jsp.BodyContentImpl _jsp_endTagHack46 = null;
              if (_jsp_ColumnTag_8 == null) {
                _jsp_ColumnTag_8 = new org.displaytag.tags.ColumnTag();
                _jsp_ColumnTag_8.setPageContext(pageContext);
                _jsp_ColumnTag_8.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_5);
                _jsp_ColumnTag_8.setHeaderClass("headerTable");
                _jsp_ColumnTag_8.setStyle("text-align:center;width:9%");
              }

              _jsp_ColumnTag_8.setTitle("Delete");
              int _jspEval48 = _jsp_ColumnTag_8.doStartTag();
              if (_jspEval48 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
                if (_jspEval48 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
                  out = pageContext.pushBody();
                  _jsp_endTagHack46 = (com.caucho.jsp.BodyContentImpl) out;
                  _jsp_ColumnTag_8.setBodyContent(_jsp_endTagHack46);
                }
                out.write(_jsp_string18, 0, _jsp_string18.length);
                _caucho_expr_2.print(out, _jsp_env, false);
                out.write(_jsp_string19, 0, _jsp_string19.length);
                if (_jsp_SubmitTag_9 == null) {
                  _jsp_SubmitTag_9 = new org.apache.struts2.views.jsp.ui.SubmitTag();
                  _jsp_SubmitTag_9.setPageContext(pageContext);
                  _jsp_SubmitTag_9.setParent((javax.servlet.jsp.tagext.Tag) _jsp_ColumnTag_8);
                  _jsp_SubmitTag_9.setType("image");
                  _jsp_SubmitTag_9.setSrc("../images/delete.gif");
                  _jsp_SubmitTag_9.setMethod("delete");
                  _jsp_SubmitTag_9.setTitle("Delete");
                }

                int _jspEval51 = _jsp_SubmitTag_9.doStartTag();
                _jsp_SubmitTag_9.doEndTag();
                out.write(_jsp_string20, 0, _jsp_string20.length);
                if (_jspEval48 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
                  out = pageContext.popBody();
              }
              int _jsp_end_53 = _jsp_ColumnTag_8.doEndTag();
              if (_jsp_endTagHack46 != null) {
                pageContext.releaseBody(_jsp_endTagHack46);
                _jsp_endTagHack46 = null;
              }
              if (_jsp_end_53 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
                return;
              out.write(_jsp_string10, 0, _jsp_string10.length);
            }
            out.write(_jsp_string21, 0, _jsp_string21.length);
          } while (_jsp_TableTag_5.doAfterBody() == javax.servlet.jsp.tagext.IterationTag.EVAL_BODY_AGAIN);
          out = pageContext.popBody();
          int _jsp_end_54 = _jsp_TableTag_5.doEndTag();
          pageContext.releaseBody(_jsp_endTagHack23);
          if (_jsp_end_54 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
            return;
          out.write(_jsp_string21, 0, _jsp_string21.length);
        }
        else {
          out.write(_jsp_string22, 0, _jsp_string22.length);
        }
        out.write(_jsp_string23, 0, _jsp_string23.length);
        if (_jspEval2 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
          out = pageContext.popBody();
      }
      _jsp_FormTag_0.doEndTag();
      if (_jsp_endTagHack0 != null) {
        pageContext.releaseBody(_jsp_endTagHack0);
        _jsp_endTagHack0 = null;
      }
      out.write(_jsp_string24, 0, _jsp_string24.length);
      out.print((Constants.FrequencyField.SFI_HIDDEN));
      out.write(_jsp_string25, 0, _jsp_string25.length);
      out.print((Constants.FrequencyField.SFI_HIDDEN));
      out.write(_jsp_string26, 0, _jsp_string26.length);
    } catch (java.lang.Throwable _jsp_e) {
      pageContext.handlePageException(_jsp_e);
    } finally {
      if (_jsp_FormTag_0 != null)
        _jsp_FormTag_0.release();
      if (_jsp_HiddenTag_1 != null)
        _jsp_HiddenTag_1.release();
      if (_jsp_SelectTag_2 != null)
        _jsp_SelectTag_2.release();
      if (_jsp_TextFieldTag_3 != null)
        _jsp_TextFieldTag_3.release();
      if (_jsp_SubmitTag_4 != null)
        _jsp_SubmitTag_4.release();
      if (_jsp_TableTag_5 != null)
        _jsp_TableTag_5.release();
      if (_jsp_ColumnTag_6 != null)
        _jsp_ColumnTag_6.release();
      if (_jsp_ColumnTag_7 != null)
        _jsp_ColumnTag_7.release();
      if (_jsp_ColumnTag_8 != null)
        _jsp_ColumnTag_8.release();
      if (_jsp_SubmitTag_9 != null)
        _jsp_SubmitTag_9.release();
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
    manager.addTaglibFunctions(_jsp_functionMap, "c", "http://java.sun.com/jstl/core_rt");
    manager.addTaglibFunctions(_jsp_functionMap, "fmt", "http://java.sun.com/jstl/fmt");
    com.caucho.jsp.PageContextImpl pageContext = new com.caucho.jsp.PageContextImpl(webApp, this);
    _caucho_expr_0 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${sessionScope.menuAuthentication.frequencyUnstructuredManage}");
    _caucho_expr_1 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${sfiRightList ne null}");
    _caucho_expr_2 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${row.id}");
    _caucho_expr_3 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${row.sfi.nameTh}");
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("configuration/frequency_unstructured.jsp"), -5364194953745481137L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    depend = new com.caucho.vfs.Depend(mergePath.lookup("jar:file:/J:/sfi-web-resin2/webapps/fsis2015/WEB-INF/lib/struts2-core-2.1.6.jar!/META-INF/struts-tags.tld"), 4562940134640561417L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.HiddenTag.class, -3857856297974974455L));
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

  private final static char []_jsp_string23;
  private final static char []_jsp_string4;
  private final static char []_jsp_string19;
  private final static char []_jsp_string10;
  private final static char []_jsp_string12;
  private final static char []_jsp_string6;
  private final static char []_jsp_string5;
  private final static char []_jsp_string21;
  private final static char []_jsp_string8;
  private final static char []_jsp_string7;
  private final static char []_jsp_string22;
  private final static char []_jsp_string15;
  private final static char []_jsp_string13;
  private final static char []_jsp_string18;
  private final static char []_jsp_string24;
  private final static char []_jsp_string25;
  private final static char []_jsp_string1;
  private final static char []_jsp_string0;
  private final static char []_jsp_string16;
  private final static char []_jsp_string3;
  private final static char []_jsp_string20;
  private final static char []_jsp_string11;
  private final static char []_jsp_string14;
  private final static char []_jsp_string9;
  private final static char []_jsp_string2;
  private final static char []_jsp_string17;
  private final static char []_jsp_string26;
  static {
    _jsp_string23 = "\r\n\r\n                                    </td>\r\n                                    <td width=\"20px\">&nbsp;</td>\r\n                                </tr>\r\n                            </table>\r\n                        </td>\r\n                        <td width=\"28\" background=\"../images/table005.gif\">\r\n                            <img src=\"../images/table005.gif\" width=\"28\" height=\"37\" alt=\"\">\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td><img src=\"../images/table006.gif\" width=\"43\" height=\"23\" alt=\"\"></td>\r\n                        <td background=\"../images/table007.gif\"></TD>\r\n                        <td><img src=\"../images/table008.gif\" width=\"28\" height=\"23\" alt=\"\"></td>\r\n                    </tr>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n    </table>\r\n".toCharArray();
    _jsp_string4 = "\r\n                                                </td>\r\n                                            </tr>\r\n                                        </table>\r\n                                                ".toCharArray();
    _jsp_string19 = "');\">\r\n                                                        ".toCharArray();
    _jsp_string10 = "\r\n                                            ".toCharArray();
    _jsp_string12 = "\">".toCharArray();
    _jsp_string6 = "\r\n                                                    \r\n                                                </td>\r\n                                            </tr>\r\n                                            <tr class=\"bgGreen1\">\r\n                                                <td class=\"label\">\r\n                                                    Dataset Date From :\r\n                                                </td>\r\n                                                <td>\r\n                                                    ".toCharArray();
    _jsp_string5 = "\r\n                                        <table width=\"100%\" class=\"displayTable\">\r\n                                            <tr class=\"bgGreen2\">\r\n                                                <td width=\"22%\" class=\"label\">SFIs Name :</td>\r\n                                                <td width=\"78%\" colspan=\"3\">\r\n                                                    ".toCharArray();
    _jsp_string21 = "\r\n                                        ".toCharArray();
    _jsp_string8 = "\r\n                                                    <img alt=\"\" border=\"0\" src=\"../images/dd.gif\" name=\"dateBtn\"\r\n                                                         width=\"15\" height=\"15\"\r\n                                                         onclick=\"displayCalendar(document.forms[0].dateTo,'dd/mm/yyyy',this);\"\r\n                                                         align=\"absmiddle\">\r\n                                                </td>\r\n                                            </tr>\r\n                                        </table>\r\n                                        <table width=\"100%\">\r\n                                            <tr>\r\n                                                <td width=\"100%\" align=\"center\">\r\n                                                    ".toCharArray();
    _jsp_string7 = "\r\n                                                    <img alt=\"\" border=\"0\" src=\"../images/dd.gif\" name=\"dateBtn\"\r\n                                                         width=\"15\" height=\"15\"\r\n                                                         onclick=\"displayCalendar(document.forms[0].dateFrom,'dd/mm/yyyy',this);\"\r\n                                                         align=\"absmiddle\">\r\n                                                </td>\r\n                                                <td class=\"label\">\r\n                                                    To :\r\n                                                </td>\r\n                                                <td>\r\n                                                    ".toCharArray();
    _jsp_string22 = "\r\n                                                    Nothing found to display.\r\n                                                ".toCharArray();
    _jsp_string15 = "\r\n                                                    <img src=\"../images/copy-icon.png\" border=\"no\" align=\"\" onclick=\"letsGo2('frequency_unstructure_detail.action?copy=true','".toCharArray();
    _jsp_string13 = "</a>\r\n                                            ".toCharArray();
    _jsp_string18 = "\r\n                                                    <div onClick=\"return confirmDelete('".toCharArray();
    _jsp_string24 = "\r\n<script type=\"text/javascript\">\r\n    var thisForm = document.getElementsByTagName('form')[0];\r\n\r\n    function letsGo(action, id) {\r\n        var sfi = document.getElementById(\"sfi\").value;\r\n\r\n        pageLink1 = action + '?id=' + id;\r\n        pageLink2 = '&".toCharArray();
    _jsp_string25 = "=' + sfi;\r\n\r\n        location.href = pageLink1.concat(pageLink2);\r\n    }\r\n    function letsGo2(action, id) {\r\n        var sfi = document.getElementById(\"sfi\").value;\r\n\r\n        pageLink1 = action + '&id=' + id;\r\n        pageLink2 = '&".toCharArray();
    _jsp_string1 = "\r\n    ".toCharArray();
    _jsp_string0 = "\r\n\r\n\r\n\r\n\r\n\r\n\r\n<html>\r\n<head>\r\n<title>Simple jsp page</title>\r\n<link rel=\"stylesheet\" type=\"text/css\" href=\"../includes/css/style.css\">\r\n<link href=\"../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css\" rel=\"stylesheet\" type=\"text/css\">\r\n<script type=\"text/javascript\" src=\"../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js\"></script>\r\n<script type=\"text/javascript\" src=\"../includes/js/tp/utils.js\"></script>\r\n<script type=\"text/javascript\" src=\"../includes/js/jquery.js\"></script>\r\n\r\n<script type=\"text/javascript\">\r\n    function changeSfi(){\r\n        thisForm.submit();\r\n    }\r\n\r\n    function resetForm() {\r\n        thisForm.sfi.selectedIndex = 0;\r\n        thisForm.dateFrom.value='';\r\n        thisForm.dateTo.value='';\r\n    }\r\n\r\n    function confirmDelete(id) {\r\n        if (confirm(\"Do you want to delete this record ?\")) {\r\n            thisForm.id.value = id;\r\n            return true;\r\n        }\r\n        return false;\r\n    }\r\n</script>\r\n</head>\r\n<body>\r\n".toCharArray();
    _jsp_string16 = "')\" style=\"cursor:pointer\">\r\n                                                ".toCharArray();
    _jsp_string3 = "\r\n                                                        <input type=\"button\" class=\"button\" id=\"btnNew\" name=\"btnNew\" value=\"Add Frequency\" style=\"width:150px\" onclick=\"letsGo('frequency_unstructure_detail.action','')\"/>\r\n                                                    ".toCharArray();
    _jsp_string20 = "\r\n                                                    </div>\r\n                                                ".toCharArray();
    _jsp_string11 = "\r\n                                                   <a href=\"frequency_unstructure_detail_view.action?id=".toCharArray();
    _jsp_string14 = "\r\n                                                ".toCharArray();
    _jsp_string9 = "&nbsp;\r\n                                                    <button class=\"button\" onclick=\"resetForm()\">Reset</button>\r\n                                                </td>\r\n                                            </tr>\r\n                                        </table>\r\n                                        <br>\r\n                                        ".toCharArray();
    _jsp_string2 = "\r\n    <table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n        <tr>\r\n            <td>\r\n                <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tr>\r\n                        <td width=\"43\"><img src=\"../images/table001.gif\" width=\"43\" height=\"43\" alt=\"\"></td>\r\n                        <td background=\"../images/table002.gif\">&nbsp;</td>\r\n                        <td width=\"173\"><img src=\"../images/table003.gif\" width=\"173\" height=\"43\" alt=\"\"></td>\r\n                    </tr>\r\n                </table>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td>\r\n                <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tr>\r\n                        <td width=\"43\" background=\"../images/table004.gif\">\r\n                            <img src=\"../images/table004.gif\" width=\"43\" height=\"37\" alt=\"\">\r\n                        </td>\r\n                        <td>\r\n                            <table width=\"100%\" border=\"0\" align=\"center\" style=\"height:100%\">\r\n                                <tr>\r\n                                    <td>\r\n                                            \r\n                                        <table width=\"100%\">\r\n                                            <tr>\r\n                                                <td width=\"40%\"><b>Frequency UnStructured</b></td>\r\n                                                <td align=\"right\">\r\n                                                    ".toCharArray();
    _jsp_string17 = "\r\n                                                    <img src=\"../images/edit.gif\" border=\"no\" align=\"\" onclick=\"letsGo('frequency_unstructure_detail.action','".toCharArray();
    _jsp_string26 = "=' + sfi;\r\n\r\n        location.href = pageLink1.concat(pageLink2);\r\n    }\r\n\r\n</script>\r\n</body>\r\n</html>".toCharArray();
  }
}