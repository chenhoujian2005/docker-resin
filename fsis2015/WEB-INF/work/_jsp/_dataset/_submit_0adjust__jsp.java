/*
 * JSP generated by Resin-3.1.9 (built Mon, 13 Apr 2009 11:09:12 PDT)
 */

package _jsp._dataset;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;

public class _submit_0adjust__jsp extends com.caucho.jsp.JavaPage
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
    com.caucho.jsp.IteratorLoopSupportTag _jsp_loop_0 = null;
    org.apache.struts2.views.jsp.ui.HiddenTag _jsp_HiddenTag_1 = null;
    org.apache.struts2.views.jsp.ui.TextareaTag _jsp_TextareaTag_2 = null;
    org.apache.struts2.views.jsp.ui.TextareaTag _jsp_TextareaTag_3 = null;
    org.apache.struts2.views.jsp.ui.CheckboxTag _jsp_CheckboxTag_4 = null;
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
      com.caucho.jsp.BodyContentImpl _jsp_endTagHack1 = null;
      if (_jsp_FormTag_0 == null) {
        _jsp_FormTag_0 = new org.apache.struts2.views.jsp.ui.FormTag();
        _jsp_FormTag_0.setPageContext(pageContext);
        _jsp_FormTag_0.setParent((javax.servlet.jsp.tagext.Tag) null);
        _jsp_FormTag_0.setId("form_submit_adjust");
        _jsp_FormTag_0.setAction("submit_adjust");
        _jsp_FormTag_0.setEnctype("multipart/form-data");
      }

      int _jspEval3 = _jsp_FormTag_0.doStartTag();
      if (_jspEval3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspEval3 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
          out = pageContext.pushBody();
          _jsp_endTagHack1 = (com.caucho.jsp.BodyContentImpl) out;
          _jsp_FormTag_0.setBodyContent(_jsp_endTagHack1);
        }
        out.write(_jsp_string1, 0, _jsp_string1.length);
        if (_caucho_expr_0.evalBoolean(_jsp_env)) {
          out.write(_jsp_string2, 0, _jsp_string2.length);
          if (_jsp_loop_0 == null)
            _jsp_loop_0 = new com.caucho.jsp.IteratorLoopSupportTag();
          java.lang.Object _jsp_items_4 = _caucho_expr_1.evalObject(_jsp_env);
          java.util.Iterator _jsp_iter_4 = com.caucho.jstl.rt.CoreForEachTag.getIterator(_jsp_items_4);
          _jsp_loop_0.init(0, Integer.MAX_VALUE, 1);
          Object _jsp_oldVar_4 = pageContext.getAttribute("obj");
          while (_jsp_iter_4.hasNext()) {
            Object _jsp_i_4 = _jsp_iter_4.next();
            pageContext.setAttribute("obj", _jsp_i_4);
            _jsp_loop_0.setCurrent(_jsp_i_4, _jsp_iter_4.hasNext());
            out.write(_jsp_string3, 0, _jsp_string3.length);
            _caucho_expr_2.print(out, _jsp_env, false);
            out.write(_jsp_string4, 0, _jsp_string4.length);
            _caucho_expr_3.print(out, _jsp_env, false);
            out.write(_jsp_string5, 0, _jsp_string5.length);
          }
          pageContext.pageSetOrRemove("obj", _jsp_oldVar_4);
          out.write(_jsp_string6, 0, _jsp_string6.length);
        }
        out.write(_jsp_string7, 0, _jsp_string7.length);
        if (_caucho_expr_4.evalBoolean(_jsp_env)) {
          out.write(_jsp_string8, 0, _jsp_string8.length);
          if (_jsp_HiddenTag_1 == null) {
            _jsp_HiddenTag_1 = new org.apache.struts2.views.jsp.ui.HiddenTag();
            _jsp_HiddenTag_1.setPageContext(pageContext);
            _jsp_HiddenTag_1.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
            _jsp_HiddenTag_1.setName("sfi");
          }

          int _jspEval7 = _jsp_HiddenTag_1.doStartTag();
          _jsp_HiddenTag_1.doEndTag();
          out.write(_jsp_string8, 0, _jsp_string8.length);
          _caucho_expr_5.print(out, _jsp_env, false);
          out.write(_jsp_string7, 0, _jsp_string7.length);
        }
        out.write(_jsp_string9, 0, _jsp_string9.length);
        if (_jsp_loop_0 == null)
          _jsp_loop_0 = new com.caucho.jsp.IteratorLoopSupportTag();
        java.lang.Object _jsp_items_9 = _caucho_expr_6.evalObject(_jsp_env);
        java.util.Iterator _jsp_iter_9 = com.caucho.jstl.rt.CoreForEachTag.getIterator(_jsp_items_9);
        _jsp_loop_0.init(0, Integer.MAX_VALUE, 1);
        Object _jsp_oldVar_9 = pageContext.getAttribute("obj");
        while (_jsp_iter_9.hasNext()) {
          Object _jsp_i_9 = _jsp_iter_9.next();
          pageContext.setAttribute("obj", _jsp_i_9);
          _jsp_loop_0.setCurrent(_jsp_i_9, _jsp_iter_9.hasNext());
          out.write(_jsp_string10, 0, _jsp_string10.length);
          _caucho_expr_2.print(out, _jsp_env, false);
          out.write(_jsp_string4, 0, _jsp_string4.length);
          _caucho_expr_7.print(out, _jsp_env, false);
          out.write(_jsp_string11, 0, _jsp_string11.length);
        }
        pageContext.pageSetOrRemove("obj", _jsp_oldVar_9);
        out.write(_jsp_string12, 0, _jsp_string12.length);
        if (_jsp_loop_0 == null)
          _jsp_loop_0 = new com.caucho.jsp.IteratorLoopSupportTag();
        java.lang.Object _jsp_items_10 = _caucho_expr_8.evalObject(_jsp_env);
        java.util.Iterator _jsp_iter_10 = com.caucho.jstl.rt.CoreForEachTag.getIterator(_jsp_items_10);
        _jsp_loop_0.init(0, Integer.MAX_VALUE, 1);
        Object _jsp_oldVar_10 = pageContext.getAttribute("obj");
        while (_jsp_iter_10.hasNext()) {
          Object _jsp_i_10 = _jsp_iter_10.next();
          pageContext.setAttribute("obj", _jsp_i_10);
          _jsp_loop_0.setCurrent(_jsp_i_10, _jsp_iter_10.hasNext());
          out.write(_jsp_string10, 0, _jsp_string10.length);
          _caucho_expr_2.print(out, _jsp_env, false);
          out.write(_jsp_string4, 0, _jsp_string4.length);
          _caucho_expr_7.print(out, _jsp_env, false);
          out.write(_jsp_string11, 0, _jsp_string11.length);
        }
        pageContext.pageSetOrRemove("obj", _jsp_oldVar_10);
        out.write(_jsp_string13, 0, _jsp_string13.length);
        if (_jsp_loop_0 == null)
          _jsp_loop_0 = new com.caucho.jsp.IteratorLoopSupportTag();
        java.lang.Object _jsp_items_11 = _caucho_expr_9.evalObject(_jsp_env);
        java.util.Iterator _jsp_iter_11 = com.caucho.jstl.rt.CoreForEachTag.getIterator(_jsp_items_11);
        _jsp_loop_0.init(0, Integer.MAX_VALUE, 1);
        Object _jsp_oldVar_11 = pageContext.getAttribute("obj");
        while (_jsp_iter_11.hasNext()) {
          Object _jsp_i_11 = _jsp_iter_11.next();
          pageContext.setAttribute("obj", _jsp_i_11);
          _jsp_loop_0.setCurrent(_jsp_i_11, _jsp_iter_11.hasNext());
          out.write(_jsp_string10, 0, _jsp_string10.length);
          _caucho_expr_2.print(out, _jsp_env, false);
          out.write(_jsp_string4, 0, _jsp_string4.length);
          _caucho_expr_7.print(out, _jsp_env, false);
          out.write(_jsp_string11, 0, _jsp_string11.length);
        }
        pageContext.pageSetOrRemove("obj", _jsp_oldVar_11);
        out.write(_jsp_string14, 0, _jsp_string14.length);
        if (_jsp_loop_0 == null)
          _jsp_loop_0 = new com.caucho.jsp.IteratorLoopSupportTag();
        java.lang.Object _jsp_items_12 = _caucho_expr_10.evalObject(_jsp_env);
        java.util.Iterator _jsp_iter_12 = com.caucho.jstl.rt.CoreForEachTag.getIterator(_jsp_items_12);
        _jsp_loop_0.init(0, Integer.MAX_VALUE, 1);
        Object _jsp_oldVar_12 = pageContext.getAttribute("obj");
        while (_jsp_iter_12.hasNext()) {
          Object _jsp_i_12 = _jsp_iter_12.next();
          pageContext.setAttribute("obj", _jsp_i_12);
          _jsp_loop_0.setCurrent(_jsp_i_12, _jsp_iter_12.hasNext());
          out.write(_jsp_string10, 0, _jsp_string10.length);
          _caucho_expr_2.print(out, _jsp_env, false);
          out.write(_jsp_string4, 0, _jsp_string4.length);
          _caucho_expr_7.print(out, _jsp_env, false);
          out.write(_jsp_string11, 0, _jsp_string11.length);
        }
        pageContext.pageSetOrRemove("obj", _jsp_oldVar_12);
        out.write(_jsp_string15, 0, _jsp_string15.length);
        com.caucho.jsp.BodyContentImpl _jsp_endTagHack13 = null;
        if (_jsp_TextareaTag_2 == null) {
          _jsp_TextareaTag_2 = new org.apache.struts2.views.jsp.ui.TextareaTag();
          _jsp_TextareaTag_2.setPageContext(pageContext);
          _jsp_TextareaTag_2.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_TextareaTag_2.setRows("4");
          _jsp_TextareaTag_2.setCols("60");
          _jsp_TextareaTag_2.setDynamicAttribute("", "maxlength", "200");
          _jsp_TextareaTag_2.setName("description");
        }

        int _jspEval15 = _jsp_TextareaTag_2.doStartTag();
        if (_jspEval15 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          if (_jspEval15 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
            out = pageContext.pushBody();
            _jsp_endTagHack13 = (com.caucho.jsp.BodyContentImpl) out;
            _jsp_TextareaTag_2.setBodyContent(_jsp_endTagHack13);
          }
          out.write(_jsp_string7, 0, _jsp_string7.length);
          if (_jspEval15 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
            out = pageContext.popBody();
        }
        _jsp_TextareaTag_2.doEndTag();
        if (_jsp_endTagHack13 != null) {
          pageContext.releaseBody(_jsp_endTagHack13);
          _jsp_endTagHack13 = null;
        }
        out.write(_jsp_string16, 0, _jsp_string16.length);
        com.caucho.jsp.BodyContentImpl _jsp_endTagHack17 = null;
        if (_jsp_TextareaTag_3 == null) {
          _jsp_TextareaTag_3 = new org.apache.struts2.views.jsp.ui.TextareaTag();
          _jsp_TextareaTag_3.setPageContext(pageContext);
          _jsp_TextareaTag_3.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_TextareaTag_3.setRows("4");
          _jsp_TextareaTag_3.setCols("60");
          _jsp_TextareaTag_3.setId("adjustReason");
          _jsp_TextareaTag_3.setDynamicAttribute("", "maxlength", "1000");
          _jsp_TextareaTag_3.setName("adjustReason");
        }

        int _jspEval19 = _jsp_TextareaTag_3.doStartTag();
        if (_jspEval19 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          if (_jspEval19 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
            out = pageContext.pushBody();
            _jsp_endTagHack17 = (com.caucho.jsp.BodyContentImpl) out;
            _jsp_TextareaTag_3.setBodyContent(_jsp_endTagHack17);
          }
          out.write(_jsp_string7, 0, _jsp_string7.length);
          if (_jspEval19 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
            out = pageContext.popBody();
        }
        _jsp_TextareaTag_3.doEndTag();
        if (_jsp_endTagHack17 != null) {
          pageContext.releaseBody(_jsp_endTagHack17);
          _jsp_endTagHack17 = null;
        }
        out.write(_jsp_string17, 0, _jsp_string17.length);
        if (_jsp_CheckboxTag_4 == null) {
          _jsp_CheckboxTag_4 = new org.apache.struts2.views.jsp.ui.CheckboxTag();
          _jsp_CheckboxTag_4.setPageContext(pageContext);
          _jsp_CheckboxTag_4.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_CheckboxTag_4.setId("passStatus");
          _jsp_CheckboxTag_4.setName("passStatus");
        }

        int _jspEval23 = _jsp_CheckboxTag_4.doStartTag();
        _jsp_CheckboxTag_4.doEndTag();
        out.write(_jsp_string18, 0, _jsp_string18.length);
        if (_jspEval3 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
          out = pageContext.popBody();
      }
      _jsp_FormTag_0.doEndTag();
      if (_jsp_endTagHack1 != null) {
        pageContext.releaseBody(_jsp_endTagHack1);
        _jsp_endTagHack1 = null;
      }
      out.write(_jsp_string19, 0, _jsp_string19.length);
    } catch (java.lang.Throwable _jsp_e) {
      pageContext.handlePageException(_jsp_e);
    } finally {
      if (_jsp_FormTag_0 != null)
        _jsp_FormTag_0.release();
      if (_jsp_HiddenTag_1 != null)
        _jsp_HiddenTag_1.release();
      if (_jsp_TextareaTag_2 != null)
        _jsp_TextareaTag_2.release();
      if (_jsp_TextareaTag_3 != null)
        _jsp_TextareaTag_3.release();
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
    manager.addTaglibFunctions(_jsp_functionMap, "c", "http://java.sun.com/jstl/core");
    com.caucho.jsp.PageContextImpl pageContext = new com.caucho.jsp.PageContextImpl(webApp, this);
    _caucho_expr_0 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${sessionScope.userLogin.sfi.id eq 000}");
    _caucho_expr_1 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.sfiFpoList}");
    _caucho_expr_2 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${obj.id}");
    _caucho_expr_3 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${obj.displayNameCodeAndCode}");
    _caucho_expr_4 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${sessionScope.userLogin.sfi.id ne 000}");
    _caucho_expr_5 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.sfiName}");
    _caucho_expr_6 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.groupList}");
    _caucho_expr_7 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${obj.name}");
    _caucho_expr_8 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.titleList}");
    _caucho_expr_9 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.subTitleList}");
    _caucho_expr_10 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.versionList}");
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("dataset/submit_adjust.jsp"), -345627957409634267L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    depend = new com.caucho.vfs.Depend(mergePath.lookup("jar:file:/D:/Develops/FPO2017/FPO2017sfiWeb/out/artifacts/fsis2017/WEB-INF/lib/struts2-core-2.1.6.jar!/META-INF/struts-tags.tld"), 4562940134640561417L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.HiddenTag.class, -3857856297974974455L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.TextareaTag.class, 333354696566552257L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.CheckboxTag.class, -2686494486770060855L));
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
  private static com.caucho.el.Expr _caucho_expr_4;
  private static com.caucho.el.Expr _caucho_expr_5;
  private static com.caucho.el.Expr _caucho_expr_6;
  private static com.caucho.el.Expr _caucho_expr_7;
  private static com.caucho.el.Expr _caucho_expr_8;
  private static com.caucho.el.Expr _caucho_expr_9;
  private static com.caucho.el.Expr _caucho_expr_10;

  private final static char []_jsp_string17;
  private final static char []_jsp_string8;
  private final static char []_jsp_string14;
  private final static char []_jsp_string1;
  private final static char []_jsp_string4;
  private final static char []_jsp_string18;
  private final static char []_jsp_string0;
  private final static char []_jsp_string19;
  private final static char []_jsp_string13;
  private final static char []_jsp_string16;
  private final static char []_jsp_string9;
  private final static char []_jsp_string10;
  private final static char []_jsp_string6;
  private final static char []_jsp_string7;
  private final static char []_jsp_string11;
  private final static char []_jsp_string5;
  private final static char []_jsp_string2;
  private final static char []_jsp_string12;
  private final static char []_jsp_string15;
  private final static char []_jsp_string3;
  static {
    _jsp_string17 = "\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1\">\n                                                <td class=\"label\">\u0e2b\u0e25\u0e31\u0e07 \u0e2a\u0e15\u0e07. \u0e2a\u0e2d\u0e1a\u0e17\u0e32\u0e19 :</td>\n                                                <td>\n                                                    ".toCharArray();
    _jsp_string8 = "\n                                                        ".toCharArray();
    _jsp_string14 = "\n                                                    </select>\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1\">\n                                                <td class=\"label\">Version<span class=\"require_field\">*</span> :</td>\n                                                <td>\n                                                    <select name=\"version\" id=\"version\">\n                                                        <option value=\"\">--------  Please Select  --------</option>\n                                                        ".toCharArray();
    _jsp_string1 = "\n    \n    <table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n        <tr>\n            <td>\n                <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                    <tr>\n                        <td width=\"43\"><img src=\"../images/table001.gif\" width=\"43\" height=\"43\" alt=\"\"></td>\n                        <td background=\"../images/table002.gif\">&nbsp;</td>\n                        <td width=\"173\"><img src=\"../images/table003.gif\" width=\"173\" height=\"43\" alt=\"\"></td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n        <tr>\n            <td>\n                <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                    <tr>\n                        <td width=\"43\" background=\"../images/table004.gif\">\n                            <img src=\"../images/table004.gif\" width=\"43\" height=\"37\" alt=\"\">\n                        </td>\n                        <td>\n                            <table width=\"100%\" border=\"0\" align=\"center\" style=\"height:100%\">\n                                <tr>\n                                    <td>\n                                        \n                                        <table width=100%>\n                                            <tr>\n                                                <td><b>Submit Adjust</b></td>\n                                            </tr>\n                                        </table>\n                                        <table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"1\" class=\"displayTable\">\n                                            <tr class=\"bgGreen2\">\n                                                <td height=30 class=\"label\" width=\"20%\">Document Type :</td>\n                                                <td width=\"80%\">\n                                                    <a>Structured</a>\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1\">\n                                                <td height=30 class=\"label\">SFIs Name<span class=\"require_field\">*</span> :</td>\n                                                <td>\n                                                    ".toCharArray();
    _jsp_string4 = "\">".toCharArray();
    _jsp_string18 = "\n                                                </td>\n                                            </tr>\n                                        </table>\n                                        <table width=\"100%\">\n                                            <tr>\n                                                <td width=\"100%\" align=\"center\">\n                                                    <input type=\"button\" id=\"submit_adjust_save\" value=\"OK\" class=\"button\" onclick=\"preventSubmit()\"/>&nbsp;\n                                                    <input type=\"reset\" id=\"reset\" name=\"reset\" value=\"Reset\" class=\"button\"/>\n                                                    \n                                                </td>\n                                            </tr>\n                                        </table>\n                                    </td>\n                                    <td width=\"20px\">&nbsp;</td>\n                                </tr>\n                            </table>\n                          </td>\n                        <td width=\"28\" background=\"../images/table005.gif\">\n                            <img src=\"../images/table005.gif\" width=\"28\" height=\"37\" alt=\"\"></td>\n                    </tr>\n                    <tr>\n                        <td><img src=\"../images/table006.gif\" width=\"43\" height=\"23\" alt=\"\"></td>\n                        <td background=\"../images/table007.gif\"></TD>\n                        <td><img src=\"../images/table008.gif\" width=\"28\" height=\"23\" alt=\"\"></td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n".toCharArray();
    _jsp_string0 = "\n\n\n<html>\n<head>\n<title>Simple jsp page</title>\n<link rel=\"stylesheet\" type=\"text/css\" href=\"../includes/css/style.css\">\n\n<script type='text/javascript' src='../dwr/engine.js'></script>\n<script type='text/javascript' src='../dwr/util.js'></script>\n<script type='text/javascript' src='../dwr/interface/AjaxManager.js'></script>\n\n<script language=\"javascript\" src=\"../includes/js/tp/utils.js\"></script>\n<script language=\"javascript\" src=\"../includes/js/tp/validate.js\"></script>\n<script language=\"javascript\" src=\"../includes/js/jquery.js\"></script>\n<script type=\"text/javascript\">\n\n      $(document).ready(function(){\n         $('textarea[maxlength]').keyup(function(){\n          var max = parseInt($(this).attr('maxlength'));\n          if($(this).val().length > max){\n           $(this).val($(this).val().substr(0, $(this).attr('maxlength')));\n          }\n          });\n        });\n      function smeHideDiv(target){\n          //alert(target);\n          if (target == 621 || target == 640) {\n              jq('.smegroup').show();\n          } else {\n              jq('.smegroup').hide();\n          }\n      }\n    function findTitle(id, zone, keyName, keyValue, clearZones) {\n        AjaxManager.findDsTitleById(id, function(data) {\n            prepareOption(zone, data, keyName, keyValue, clearZones);\n        });\n    }\n    function findSubtitle(id, zone, keyName, keyValue, clearZones) {\n        AjaxManager.findDsTitleByIdAndOrg(id, null, function(data) {\n            prepareOption(zone, data, keyName, keyValue, clearZones);\n        });\n    }\n    function findVersion(id, zone, keyName, keyValue) {\n        AjaxManager.findDsVersionById(id, function(data) {\n            prepareOptionOne(zone, data, keyName, keyValue);\n        });\n        smeHideDiv(id);\n    }\n\n    function prepareOptionOne(zone, data, keyName, keyValue) {\n        dwr.util.removeAllOptions(zone);\n        document.getElementById(zone).options[0] = new Option('--------  Please Select  --------', '');\n        dwr.util.addOptions(zone, data, keyName, keyValue);\n    }\n    function prepareOption(zone, data, keyName, keyValue, clearZones) {\n        dwr.util.removeAllOptions(zone);\n        document.getElementById(zone).options[0] = new Option('--------  Please Select  --------', '');\n        dwr.util.addOptions(zone, data, keyName, keyValue);\n        if (clearZones != null) {\n            for (var i = 0; i < clearZones.length; i++) {\n                dwr.util.removeAllOptions(clearZones[i]);\n                document.getElementById(clearZones[i]).options[0] = new Option('--------  Please Select  --------', '');\n            }\n        }\n    }\n\n      function validateForm() {\n        var thisForm = document.getElementById('form_submit_adjust');\n          if (isEmptyById('sfi')) {\n              alert('Please Select SFIs Name');\n              thisForm.sfi.focus();\n              return false;\n          } else if (isEmptyById('group')) {\n              alert('Please Select Group');\n              thisForm.group.focus();\n              return false;\n          } else if (isEmptyById('title')) {\n              alert('Please Select Title');\n              thisForm.title.focus();\n              return false;\n          } else if (isEmptyById('subTitle')) {\n              alert('Please Select SubTitle');\n              thisForm.subTitle.focus();\n              return false;\n          } else if (isEmptyById('version')) {\n              alert('Please Select Version');\n              thisForm.version.focus();\n              return false;\n          }\n          if (isEmptyById('upload')) {\n              alert('Please Select File Name');\n              thisForm.upload.focus();\n              return false;\n          } else {\n              var file = getValue('upload');\n              if ((file.substring(file.length - 4, file.length) != '.xml') && (file.substring(file.length - 4, file.length) != '.XML')) {\n                  alert('Invalid File Type' + '\\n Support XML Only');\n                  thisForm.upload.focus();\n                  return false;\n              }\n          }\n\n          if (isEmptyById('adjustReason')) {\n              alert('Please Input Adjust Reason');\n              thisForm.adjustReason.focus();\n              return false;\n          }\n          return true;\n      }\n\n      function preventSubmit() {\n          if (validateForm()) {\n              var thisForm = document.getElementById('form_submit_adjust');\n              document.getElementById(\"submit_adjust_save\").disabled = true;\n              document.getElementById(\"reset\").disabled = true;\n\n              var hiddenf = document.createElement(\"input\");\n              hiddenf.setAttribute(\"type\", \"hidden\");\n              hiddenf.setAttribute(\"name\", \"method:save\");\n\n              thisForm.appendChild(hiddenf);\n              thisForm.submit();\n          }\n      }\n      var jq = jQuery.noConflict();\n</script>\n</head>\n<body onload=\"jq('.smegroup').hide();\">\n".toCharArray();
    _jsp_string19 = "\n</body>\n</html>\n".toCharArray();
    _jsp_string13 = "\n                                                    </select>\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen2\">\n                                                <td class=\"label\">Subtitle<span class=\"require_field\">*</span> :</td>\n                                                <td>\n                                                    <select name=\"subTitle\" id=\"subTitle\" onchange=\"findVersion(this.value,'version','id','name');\">\n                                                        <option value=\"\">--------  Please Select  --------</option>\n                                                        ".toCharArray();
    _jsp_string16 = "\n\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1\">\n                                                <td class=\"label\">File name<span class=\"require_field\">*</span> :</td>\n                                                <td>\n                                                    <input type=\"file\" name=\"upload\" size=\"60\" value=\"\" id=\"upload\"/>\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen2 smegroup\">\n                                                <td class=\"label\">File name :</td>\n                                                <td>\n                                                    <input type=\"file\" name=\"upload1\" size=\"60\" value=\"\" id=\"upload1\"/>\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1 smegroup\">\n                                                <td class=\"label\">File name :</td>\n                                                <td>\n                                                    <input type=\"file\" name=\"upload2\" size=\"60\" value=\"\" id=\"upload2\"/>\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen2 smegroup\">\n                                                <td class=\"label\">File name :</td>\n                                                <td>\n                                                    <input type=\"file\" name=\"upload3\" size=\"60\" value=\"\" id=\"upload3\"/>\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1 smegroup\">\n                                                <td class=\"label\">File name :</td>\n                                                <td>\n                                                    <input type=\"file\" name=\"upload4\" size=\"60\" value=\"\" id=\"upload4\"/>\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen2\">\n                                                <td class=\"label\">Adjust Reason<span class=\"require_field\">*</span> :</td>\n                                                <td>\n                                                    \n                                                    \n                                                    \n                                                    ".toCharArray();
    _jsp_string9 = "\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen2\">\n                                                <td class=\"label\">Group<span class=\"require_field\">*</span> :</td>\n                                                <td>\n                                                    <select name=\"group\" id=\"group\" onchange=\"findTitle(this.value,'title','id','name', new Array('subTitle','version'));\">\n                                                        <option value=\"\">--------  Please Select  --------</option>\n                                                        ".toCharArray();
    _jsp_string10 = "\n                                                            <option value=\"".toCharArray();
    _jsp_string6 = "\n                                                        </select>\n                                                    ".toCharArray();
    _jsp_string7 = "\n                                                    ".toCharArray();
    _jsp_string11 = "</option>\n                                                        ".toCharArray();
    _jsp_string5 = "</option>\n                                                            ".toCharArray();
    _jsp_string2 = "\n                                                        <select name=\"sfi\" id=\"sfi\">\n                                                            <option value=\"\">--------  Please Select  --------</option>\n                                                            \n                                                            ".toCharArray();
    _jsp_string12 = "\n                                                    </select>\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1\">\n                                                <td class=\"label\">Title<span class=\"require_field\">*</span> :</td>\n                                                <td>\n                                                    <select name=\"title\" id=\"title\" onchange=\"findSubtitle(this.value,'subTitle','id','name', new Array('version'));\">\n                                                        <option value=\"\">--------  Please Select  --------</option>\n                                                        ".toCharArray();
    _jsp_string15 = "\n                                                    </select>\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen2\">\n                                                <td class=\"label\">Description :</td>\n                                                <td>\n                                                    \n                                                    \n                                                    \n                                                    ".toCharArray();
    _jsp_string3 = "\n                                                                <option value=\"".toCharArray();
  }
}