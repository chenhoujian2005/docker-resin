/*
 * JSP generated by Resin-3.1.9 (built Mon, 13 Apr 2009 11:09:12 PDT)
 */

package _jsp._category;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import th.go.mof.fpo.Constants;

public class _classification__jsp extends com.caucho.jsp.JavaPage
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
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_2 = null;
    org.apache.struts2.views.jsp.ui.TextFieldTag _jsp_TextFieldTag_3 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_4 = null;
    org.displaytag.tags.TableTag _jsp_TableTag_5 = null;
    org.displaytag.tags.ColumnTag _jsp_ColumnTag_6 = null;
    org.displaytag.tags.ColumnTag _jsp_ColumnTag_7 = null;
    org.displaytag.tags.ColumnTag _jsp_ColumnTag_8 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_9 = null;
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
      out.print((request.getContextPath()));
      out.write(_jsp_string1, 0, _jsp_string1.length);
      out.print((Constants.ClassificationField.CLASSIFICATION_NAME_HIDDEN));
      out.write(_jsp_string2, 0, _jsp_string2.length);
      out.print((Constants.ClassificationField.DESCRIPTION_HIDDEN));
      out.write(_jsp_string3, 0, _jsp_string3.length);
      com.caucho.jsp.BodyContentImpl _jsp_endTagHack0 = null;
      if (_jsp_FormTag_0 == null) {
        _jsp_FormTag_0 = new org.apache.struts2.views.jsp.ui.FormTag();
        _jsp_FormTag_0.setPageContext(pageContext);
        _jsp_FormTag_0.setParent((javax.servlet.jsp.tagext.Tag) null);
        _jsp_FormTag_0.setAction("classification");
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
          _jsp_HiddenTag_1.setId("classificationId");
          _jsp_HiddenTag_1.setName("classificationId");
        }

        int _jspEval5 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write(_jsp_string4, 0, _jsp_string4.length);
        if (_caucho_expr_0.evalBoolean(_jsp_env)) {
          out.write(_jsp_string5, 0, _jsp_string5.length);
          if (_caucho_expr_1.evalBoolean(_jsp_env)) {
            out.write(_jsp_string6, 0, _jsp_string6.length);
            if (_jsp_SubmitTag_2 == null) {
              _jsp_SubmitTag_2 = new org.apache.struts2.views.jsp.ui.SubmitTag();
              _jsp_SubmitTag_2.setPageContext(pageContext);
              _jsp_SubmitTag_2.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
              _jsp_SubmitTag_2.setAction("classification_upload");
              _jsp_SubmitTag_2.setValue("Upload File");
              _jsp_SubmitTag_2.setId("butAdd");
              _jsp_SubmitTag_2.setCssClass("button");
              _jsp_SubmitTag_2.setCssStyle("width:150px");
            }

            int _jspEval9 = _jsp_SubmitTag_2.doStartTag();
            _jsp_SubmitTag_2.doEndTag();
            out.write(_jsp_string7, 0, _jsp_string7.length);
          }
          out.write(_jsp_string8, 0, _jsp_string8.length);
        }
        out.write(_jsp_string9, 0, _jsp_string9.length);
        if (_jsp_TextFieldTag_3 == null) {
          _jsp_TextFieldTag_3 = new org.apache.struts2.views.jsp.ui.TextFieldTag();
          _jsp_TextFieldTag_3.setPageContext(pageContext);
          _jsp_TextFieldTag_3.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_TextFieldTag_3.setCssStyle("width:350px");
        }

        _jsp_TextFieldTag_3.setName("classificationName");
        _jsp_TextFieldTag_3.setId("classificationName");
        int _jspEval13 = _jsp_TextFieldTag_3.doStartTag();
        _jsp_TextFieldTag_3.doEndTag();
        out.write(_jsp_string10, 0, _jsp_string10.length);
        _jsp_TextFieldTag_3.setName("description");
        _jsp_TextFieldTag_3.setId("description");
        int _jspEval17 = _jsp_TextFieldTag_3.doStartTag();
        _jsp_TextFieldTag_3.doEndTag();
        out.write(_jsp_string11, 0, _jsp_string11.length);
        if (_jsp_SubmitTag_4 == null) {
          _jsp_SubmitTag_4 = new org.apache.struts2.views.jsp.ui.SubmitTag();
          _jsp_SubmitTag_4.setPageContext(pageContext);
          _jsp_SubmitTag_4.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SubmitTag_4.setCssClass("button");
        }

        _jsp_SubmitTag_4.setName("search");
        _jsp_SubmitTag_4.setId("btnSearch");
        _jsp_SubmitTag_4.setMethod("search");
        _jsp_SubmitTag_4.setValue("Search");
        int _jspEval21 = _jsp_SubmitTag_4.doStartTag();
        _jsp_SubmitTag_4.doEndTag();
        out.write(_jsp_string12, 0, _jsp_string12.length);
        _jsp_SubmitTag_4.setName("back");
        _jsp_SubmitTag_4.setId("btnBack");
        _jsp_SubmitTag_4.setMethod("back");
        _jsp_SubmitTag_4.setValue("Back");
        int _jspEval25 = _jsp_SubmitTag_4.doStartTag();
        _jsp_SubmitTag_4.doEndTag();
        out.write(_jsp_string13, 0, _jsp_string13.length);
        com.caucho.jsp.BodyContentImpl _jsp_endTagHack27 = null;
        if (_jsp_TableTag_5 == null) {
          _jsp_TableTag_5 = new org.displaytag.tags.TableTag();
          _jsp_TableTag_5.setPageContext(pageContext);
          _jsp_TableTag_5.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_TableTag_5.setName("classificationList");
          _jsp_TableTag_5.setUid("row");
          _jsp_TableTag_5.setExport(false);
          _jsp_TableTag_5.setClass("displayTag");
          _jsp_TableTag_5.setRequestURI("classification.action");
          _jsp_TableTag_5.setStyle("width:100%;text-align:center");
          _jsp_TableTag_5.setPagesize(50);
        }

        _jsp_TableTag_5.setSize(_caucho_expr_2.evalObject(_jsp_env));
        _jsp_TableTag_5.doStartTag();
        out = pageContext.pushBody();
        _jsp_endTagHack27 = (com.caucho.jsp.BodyContentImpl) out;
        _jsp_TableTag_5.setBodyContent(_jsp_endTagHack27);
        do {
          out.write(_jsp_string14, 0, _jsp_string14.length);
          if (_jsp_ColumnTag_6 == null) {
            _jsp_ColumnTag_6 = new org.displaytag.tags.ColumnTag();
            _jsp_ColumnTag_6.setPageContext(pageContext);
            _jsp_ColumnTag_6.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_5);
            _jsp_ColumnTag_6.setHeaderClass("headerTable");
            _jsp_ColumnTag_6.setSortable(true);
          }

          _jsp_ColumnTag_6.setTitle("Version");
          _jsp_ColumnTag_6.setProperty("classificationVersion.version");
          _jsp_ColumnTag_6.setStyle("text-align:center;width:10%;");
          _jsp_ColumnTag_6.setSortName("versionClassification");
          int _jspEval32 = _jsp_ColumnTag_6.doStartTag();
          int _jsp_end_33 = _jsp_ColumnTag_6.doEndTag();
          if (_jsp_end_33 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
            return;
          out.write(_jsp_string15, 0, _jsp_string15.length);
          if (_jsp_ColumnTag_7 == null) {
            _jsp_ColumnTag_7 = new org.displaytag.tags.ColumnTag();
            _jsp_ColumnTag_7.setPageContext(pageContext);
            _jsp_ColumnTag_7.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_5);
            _jsp_ColumnTag_7.setTitle("Classification Name");
            _jsp_ColumnTag_7.setProperty("name");
            _jsp_ColumnTag_7.setHref("classification_detail_view.action");
            _jsp_ColumnTag_7.setParamId("classificationId");
            _jsp_ColumnTag_7.setParamProperty("id");
            _jsp_ColumnTag_7.setStyle("text-align:left;width:30%;");
            _jsp_ColumnTag_7.setHeaderClass("headerTable");
            _jsp_ColumnTag_7.setSortable(true);
            _jsp_ColumnTag_7.setSortName("name");
          }

          int _jspEval36 = _jsp_ColumnTag_7.doStartTag();
          int _jsp_end_37 = _jsp_ColumnTag_7.doEndTag();
          if (_jsp_end_37 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
            return;
          out.write(_jsp_string16, 0, _jsp_string16.length);
          _jsp_ColumnTag_6.setTitle("Description");
          _jsp_ColumnTag_6.setProperty("description");
          _jsp_ColumnTag_6.setStyle("text-align:left;width:30%;");
          _jsp_ColumnTag_6.setSortName("description");
          int _jspEval40 = _jsp_ColumnTag_6.doStartTag();
          int _jsp_end_41 = _jsp_ColumnTag_6.doEndTag();
          if (_jsp_end_41 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
            return;
          out.write(_jsp_string16, 0, _jsp_string16.length);
          if (_caucho_expr_0.evalBoolean(_jsp_env)) {
            out.write(_jsp_string6, 0, _jsp_string6.length);
            com.caucho.jsp.BodyContentImpl _jsp_endTagHack42 = null;
            if (_jsp_ColumnTag_8 == null) {
              _jsp_ColumnTag_8 = new org.displaytag.tags.ColumnTag();
              _jsp_ColumnTag_8.setPageContext(pageContext);
              _jsp_ColumnTag_8.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_5);
              _jsp_ColumnTag_8.setHeaderClass("headerTable");
            }

            _jsp_ColumnTag_8.setTitle("Edit");
            _jsp_ColumnTag_8.setStyle("text-align:center;width:7%");
            int _jspEval44 = _jsp_ColumnTag_8.doStartTag();
            if (_jspEval44 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
              if (_jspEval44 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
                out = pageContext.pushBody();
                _jsp_endTagHack42 = (com.caucho.jsp.BodyContentImpl) out;
                _jsp_ColumnTag_8.setBodyContent(_jsp_endTagHack42);
              }
              out.write(_jsp_string17, 0, _jsp_string17.length);
              _caucho_expr_3.print(out, _jsp_env, false);
              out.write(_jsp_string18, 0, _jsp_string18.length);
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
            out.write(_jsp_string6, 0, _jsp_string6.length);
            com.caucho.jsp.BodyContentImpl _jsp_endTagHack46 = null;
            if (_jsp_ColumnTag_8 == null) {
              _jsp_ColumnTag_8 = new org.displaytag.tags.ColumnTag();
              _jsp_ColumnTag_8.setPageContext(pageContext);
              _jsp_ColumnTag_8.setParent((javax.servlet.jsp.tagext.Tag) _jsp_TableTag_5);
              _jsp_ColumnTag_8.setHeaderClass("headerTable");
            }

            _jsp_ColumnTag_8.setTitle("Delete");
            _jsp_ColumnTag_8.setStyle("text-align:center;width:8%");
            int _jspEval48 = _jsp_ColumnTag_8.doStartTag();
            if (_jspEval48 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
              if (_jspEval48 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
                out = pageContext.pushBody();
                _jsp_endTagHack46 = (com.caucho.jsp.BodyContentImpl) out;
                _jsp_ColumnTag_8.setBodyContent(_jsp_endTagHack46);
              }
              out.write(_jsp_string19, 0, _jsp_string19.length);
              _caucho_expr_3.print(out, _jsp_env, false);
              out.write(_jsp_string20, 0, _jsp_string20.length);
              if (_jsp_SubmitTag_9 == null) {
                _jsp_SubmitTag_9 = new org.apache.struts2.views.jsp.ui.SubmitTag();
                _jsp_SubmitTag_9.setPageContext(pageContext);
                _jsp_SubmitTag_9.setParent((javax.servlet.jsp.tagext.Tag) _jsp_ColumnTag_8);
                _jsp_SubmitTag_9.setMethod("delete");
                _jsp_SubmitTag_9.setType("image");
                _jsp_SubmitTag_9.setSrc("../images/delete.gif");
                _jsp_SubmitTag_9.setOnclick("return confirm('Do you want to delete this record ?')");
                _jsp_SubmitTag_9.setTitle("Delete");
              }

              int _jspEval51 = _jsp_SubmitTag_9.doStartTag();
              _jsp_SubmitTag_9.doEndTag();
              out.write(_jsp_string21, 0, _jsp_string21.length);
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
            out.write(_jsp_string16, 0, _jsp_string16.length);
          }
          out.write(_jsp_string8, 0, _jsp_string8.length);
        } while (_jsp_TableTag_5.doAfterBody() == javax.servlet.jsp.tagext.IterationTag.EVAL_BODY_AGAIN);
        out = pageContext.popBody();
        int _jsp_end_54 = _jsp_TableTag_5.doEndTag();
        pageContext.releaseBody(_jsp_endTagHack27);
        if (_jsp_end_54 == javax.servlet.jsp.tagext.Tag.SKIP_PAGE)
          return;
        out.write(_jsp_string22, 0, _jsp_string22.length);
        if (_jspEval2 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
          out = pageContext.popBody();
      }
      _jsp_FormTag_0.doEndTag();
      if (_jsp_endTagHack0 != null) {
        pageContext.releaseBody(_jsp_endTagHack0);
        _jsp_endTagHack0 = null;
      }
      out.write(_jsp_string23, 0, _jsp_string23.length);
    } catch (java.lang.Throwable _jsp_e) {
      pageContext.handlePageException(_jsp_e);
    } finally {
      if (_jsp_FormTag_0 != null)
        _jsp_FormTag_0.release();
      if (_jsp_HiddenTag_1 != null)
        _jsp_HiddenTag_1.release();
      if (_jsp_SubmitTag_2 != null)
        _jsp_SubmitTag_2.release();
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
    manager.addTaglibFunctions(_jsp_functionMap, "display", "http://displaytag.sf.net");
    manager.addTaglibFunctions(_jsp_functionMap, "s", "/struts-tags");
    manager.addTaglibFunctions(_jsp_functionMap, "c", "http://java.sun.com/jstl/core");
    com.caucho.jsp.PageContextImpl pageContext = new com.caucho.jsp.PageContextImpl(webApp, this);
    _caucho_expr_0 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${sessionScope.menuAuthentication.classificationManage}");
    _caucho_expr_1 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.flagUpload}");
    _caucho_expr_2 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.totalRecord}");
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("category/classification.jsp"), -5657643104975736754L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    depend = new com.caucho.vfs.Depend(mergePath.lookup("jar:file:/J:/sfi-web-resin2/webapps/fsis2015/WEB-INF/lib/struts2-core-2.1.6.jar!/META-INF/struts-tags.tld"), 4562940134640561417L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.HiddenTag.class, -3857856297974974455L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.SubmitTag.class, 2704927420214496830L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.TextFieldTag.class, -5073161277586165321L));
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

  private final static char []_jsp_string11;
  private final static char []_jsp_string16;
  private final static char []_jsp_string2;
  private final static char []_jsp_string1;
  private final static char []_jsp_string3;
  private final static char []_jsp_string14;
  private final static char []_jsp_string18;
  private final static char []_jsp_string15;
  private final static char []_jsp_string20;
  private final static char []_jsp_string19;
  private final static char []_jsp_string12;
  private final static char []_jsp_string4;
  private final static char []_jsp_string23;
  private final static char []_jsp_string7;
  private final static char []_jsp_string17;
  private final static char []_jsp_string22;
  private final static char []_jsp_string21;
  private final static char []_jsp_string8;
  private final static char []_jsp_string6;
  private final static char []_jsp_string0;
  private final static char []_jsp_string10;
  private final static char []_jsp_string5;
  private final static char []_jsp_string9;
  private final static char []_jsp_string13;
  static {
    _jsp_string11 = "\n                                            </td>\n                                        </tr>\n\n                                    </table>\n                                </td>\n                            </tr>\n                            <tr>\n                                <td align=\"center\" colspan=\"2\">\n                                    ".toCharArray();
    _jsp_string16 = "\n                                        ".toCharArray();
    _jsp_string2 = "=' + classificationName;\n        pageLink3 = '&".toCharArray();
    _jsp_string1 = "/includes/css/style.css\">\n<script type=\"text/javascript\">\n    function setId(id) {\n        thisForm.classificationId.value = id;\n    }\n\n    function letsGo(action, id) {\n        var classificationName = document.getElementById(\"classificationName\").value;\n        var description = document.getElementById(\"description\").value;\n\n        pageLink1 = action + '?id=' + id;\n        pageLink2 = '&".toCharArray();
    _jsp_string3 = "=' + description;\n\n        location.href = pageLink1.concat(pageLink2, pageLink3);\n    }\n\n</script>\n</head>\n<body>\n".toCharArray();
    _jsp_string14 = "\n                                     ".toCharArray();
    _jsp_string18 = "')\" style=\"cursor:pointer\">\n                                            ".toCharArray();
    _jsp_string15 = "\n                                     \n                                        ".toCharArray();
    _jsp_string20 = "');\">\n                                                    ".toCharArray();
    _jsp_string19 = "\n                                        <div onmouseover=\"setId('".toCharArray();
    _jsp_string12 = "  &nbsp;\n                                    <input type=\"button\" name=\"reset\" id=\"reset\" value=\"Reset\" class=\"button\" onclick=\"resetFrom()\"/>   &nbsp;\n                                    ".toCharArray();
    _jsp_string4 = "\n<table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n    <tr>\n        <td>\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td width=\"43\"><img src=\"../images/table001.gif\" width=\"43\" height=\"43\" alt=\"\"></td>\n                    <td background=\"../images/table002.gif\">&nbsp;</td>\n                    <td width=\"173\"><img src=\"../images/table003.gif\" width=\"173\" height=\"43\" alt=\"\"></td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n    <tr>\n        <td>\n            <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                <tr>\n                    <td width=\"43\" background=\"../images/table004.gif\"><img src=\"../images/table004.gif\" width=\"43\" height=\"37\" alt=\"\"></td>\n                    <td>\n                        <table width=\"100%\" border=\"0\" align=\"center\" style=\"height:100%\">\n                            <tr>\n                                <td width=\"35%\">\n                                    <b>Classification</b>\n                                </td>\n                                <td width=\"65%\" align=\"right\">\n                                  ".toCharArray();
    _jsp_string23 = "\n<script type=\"text/javascript\">\n    var thisForm = document.getElementsByTagName('form')[0];\n\n    function resetFrom(){\n        thisForm.classificationName.value = '';\n        thisForm.description.value = '';\n    }\n\n</script>\n</body>\n</html>\n\n\n".toCharArray();
    _jsp_string7 = "\n                                       ".toCharArray();
    _jsp_string17 = "\n                                                <img src=../images/edit.gif border=\"no\" align=\"\" onclick=\"letsGo('classification_detail.action','".toCharArray();
    _jsp_string22 = "\n                                </td>\n                            </tr>\n                        </table>\n                    </td>\n                    <td width=\"28\" background=\"../images/table005.gif\"><img src=\"../images/table005.gif\" width=\"28\"/>\n                </tr>\n                <tr>\n                    <td><img src=\"../images/table006.gif\" width=\"43\" height=\"23\" alt=\"\"></td>\n                    <td background=\"../images/table007.gif\"></TD>\n                    <td><img src=\"../images/table008.gif\" width=\"28\" height=\"23\" alt=\"\"></td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>\n".toCharArray();
    _jsp_string21 = "\n                                                </div>\n                                            ".toCharArray();
    _jsp_string8 = "\n                                    ".toCharArray();
    _jsp_string6 = "\n                                            ".toCharArray();
    _jsp_string0 = "\n\n\n\n\n\n<html>\n<head>\n<!--script type=\"text/javascript\" src=\"../includes/js/jquery.js\"></script-->\n<link rel=\"stylesheet\" type=\"text/css\" href=\"".toCharArray();
    _jsp_string10 = "\n                                            </td>\n                                        </tr>\n                                        <tr class=\"bgGreen2\">\n                                            <td class=\"label\">Description :</td>\n                                            <td>\n                                                ".toCharArray();
    _jsp_string5 = "\n                                      <input type=\"button\" class=\"button\"  value=\"Add\" style=\"width:150px\" onclick=\"letsGo('classification_detail.action','')\">\n                                        ".toCharArray();
    _jsp_string9 = "\n                                </td>\n                            </tr>\n                            <tr>\n                                <td colspan=\"2\">\n                                    <table width=\"100%\" class=\"displayTable\">\n                                        <tr class=\"bgGreen1\">\n                                            <td class=\"label\">Classification Name :</td>\n                                            <td>\n                                                ".toCharArray();
    _jsp_string13 = "\n                                    \n                                </td>\n                            </tr>\n                            <tr>\n                                <td colspan=\"2\">\n                                    ".toCharArray();
  }
}