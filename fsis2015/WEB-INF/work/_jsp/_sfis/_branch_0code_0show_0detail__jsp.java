/*
 * JSP generated by Resin-3.1.9 (built Mon, 13 Apr 2009 11:09:12 PDT)
 */

package _jsp._sfis;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;

public class _branch_0code_0show_0detail__jsp extends com.caucho.jsp.JavaPage
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
    org.apache.struts2.views.jsp.ui.TextFieldTag _jsp_TextFieldTag_4 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_5 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_6 = null;
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
      out.print((request.getContextPath()));
      out.write(_jsp_string1, 0, _jsp_string1.length);
      out.print((request.getContextPath()));
      out.write(_jsp_string2, 0, _jsp_string2.length);
      out.print((request.getContextPath()));
      out.write(_jsp_string3, 0, _jsp_string3.length);
      out.print((request.getContextPath()));
      out.write(_jsp_string4, 0, _jsp_string4.length);
      out.print((request.getContextPath()));
      out.write(_jsp_string5, 0, _jsp_string5.length);
      out.print((request.getContextPath()));
      out.write(_jsp_string6, 0, _jsp_string6.length);
      out.print((request.getContextPath()));
      out.write(_jsp_string7, 0, _jsp_string7.length);
      if (_caucho_expr_0.evalBoolean(_jsp_env)) {
        out.write(_jsp_string8, 0, _jsp_string8.length);
      }
      out.write(_jsp_string9, 0, _jsp_string9.length);
      com.caucho.jsp.BodyContentImpl _jsp_endTagHack0 = null;
      if (_jsp_FormTag_0 == null) {
        _jsp_FormTag_0 = new org.apache.struts2.views.jsp.ui.FormTag();
        _jsp_FormTag_0.setPageContext(pageContext);
        _jsp_FormTag_0.setParent((javax.servlet.jsp.tagext.Tag) null);
        _jsp_FormTag_0.setAction("branch_code_show_detail");
      }

      int _jspEval2 = _jsp_FormTag_0.doStartTag();
      if (_jspEval2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspEval2 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED) {
          out = pageContext.pushBody();
          _jsp_endTagHack0 = (com.caucho.jsp.BodyContentImpl) out;
          _jsp_FormTag_0.setBodyContent(_jsp_endTagHack0);
        }
        out.write(_jsp_string10, 0, _jsp_string10.length);
        if (_jsp_HiddenTag_1 == null) {
          _jsp_HiddenTag_1 = new org.apache.struts2.views.jsp.ui.HiddenTag();
          _jsp_HiddenTag_1.setPageContext(pageContext);
          _jsp_HiddenTag_1.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
        }

        _jsp_HiddenTag_1.setId("id");
        _jsp_HiddenTag_1.setName("id");
        int _jspEval5 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write(_jsp_string11, 0, _jsp_string11.length);
        _jsp_HiddenTag_1.setId("sfiHidden");
        _jsp_HiddenTag_1.setName("sfiHidden");
        int _jspEval9 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write(_jsp_string10, 0, _jsp_string10.length);
        _jsp_HiddenTag_1.setId("branchCodeHidden");
        _jsp_HiddenTag_1.setName("branchCodeHidden");
        int _jspEval13 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write(_jsp_string12, 0, _jsp_string12.length);
        if (_caucho_expr_1.evalBoolean(_jsp_env)) {
          out.write(_jsp_string13, 0, _jsp_string13.length);
        }
        out.write(_jsp_string14, 0, _jsp_string14.length);
        if (_caucho_expr_2.evalBoolean(_jsp_env)) {
          out.write(_jsp_string15, 0, _jsp_string15.length);
          _caucho_expr_3.print(out, _jsp_env, true);
          out.write(_jsp_string16, 0, _jsp_string16.length);
        }
        else {
          out.write(_jsp_string15, 0, _jsp_string15.length);
          if (_jsp_SelectTag_2 == null) {
            _jsp_SelectTag_2 = new org.apache.struts2.views.jsp.ui.SelectTag();
            _jsp_SelectTag_2.setPageContext(pageContext);
            _jsp_SelectTag_2.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
            _jsp_SelectTag_2.setHeaderKey("");
            _jsp_SelectTag_2.setHeaderValue("-------------  Please Select  -------------");
          }

          _jsp_SelectTag_2.setList("sfiList");
          _jsp_SelectTag_2.setName("sfiId");
          _jsp_SelectTag_2.setId("sfiId");
          _jsp_SelectTag_2.setListKey("id");
          _jsp_SelectTag_2.setListValue("nameTh");
          int _jspEval17 = _jsp_SelectTag_2.doStartTag();
          _jsp_SelectTag_2.doEndTag();
          out.write(_jsp_string16, 0, _jsp_string16.length);
        }
        out.write(_jsp_string17, 0, _jsp_string17.length);
        if (_caucho_expr_2.evalBoolean(_jsp_env)) {
          out.write(_jsp_string18, 0, _jsp_string18.length);
          _caucho_expr_4.print(out, _jsp_env, true);
          out.write(_jsp_string19, 0, _jsp_string19.length);
        }
        else {
          out.write(_jsp_string20, 0, _jsp_string20.length);
          if (_jsp_TextFieldTag_3 == null) {
            _jsp_TextFieldTag_3 = new org.apache.struts2.views.jsp.ui.TextFieldTag();
            _jsp_TextFieldTag_3.setPageContext(pageContext);
            _jsp_TextFieldTag_3.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          }

          _jsp_TextFieldTag_3.setId("branchCode");
          _jsp_TextFieldTag_3.setName("branchCode");
          _jsp_TextFieldTag_3.setMaxlength("4");
          int _jspEval21 = _jsp_TextFieldTag_3.doStartTag();
          _jsp_TextFieldTag_3.doEndTag();
          out.write(_jsp_string21, 0, _jsp_string21.length);
          if (_caucho_expr_5.evalBoolean(_jsp_env)) {
            out.write(_jsp_string22, 0, _jsp_string22.length);
          }
          out.write(_jsp_string23, 0, _jsp_string23.length);
        }
        out.write(_jsp_string24, 0, _jsp_string24.length);
        if (_jsp_TextFieldTag_3 == null) {
          _jsp_TextFieldTag_3 = new org.apache.struts2.views.jsp.ui.TextFieldTag();
          _jsp_TextFieldTag_3.setPageContext(pageContext);
          _jsp_TextFieldTag_3.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
        }

        _jsp_TextFieldTag_3.setId("nameTh");
        _jsp_TextFieldTag_3.setName("nameTh");
        _jsp_TextFieldTag_3.setMaxlength("512");
        int _jspEval25 = _jsp_TextFieldTag_3.doStartTag();
        _jsp_TextFieldTag_3.doEndTag();
        out.write(_jsp_string25, 0, _jsp_string25.length);
        _jsp_TextFieldTag_3.setId("nameEn");
        _jsp_TextFieldTag_3.setName("nameEn");
        _jsp_TextFieldTag_3.setMaxlength("512");
        int _jspEval29 = _jsp_TextFieldTag_3.doStartTag();
        _jsp_TextFieldTag_3.doEndTag();
        out.write(_jsp_string26, 0, _jsp_string26.length);
        if (_jsp_TextFieldTag_4 == null) {
          _jsp_TextFieldTag_4 = new org.apache.struts2.views.jsp.ui.TextFieldTag();
          _jsp_TextFieldTag_4.setPageContext(pageContext);
          _jsp_TextFieldTag_4.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_TextFieldTag_4.setReadonly("true");
          _jsp_TextFieldTag_4.setSize("8");
        }

        _jsp_TextFieldTag_4.setName("openDate");
        _jsp_TextFieldTag_4.setId("openDate");
        int _jspEval33 = _jsp_TextFieldTag_4.doStartTag();
        _jsp_TextFieldTag_4.doEndTag();
        out.write(_jsp_string27, 0, _jsp_string27.length);
        _jsp_TextFieldTag_4.setName("closeDate");
        _jsp_TextFieldTag_4.setId("closeDate");
        int _jspEval37 = _jsp_TextFieldTag_4.doStartTag();
        _jsp_TextFieldTag_4.doEndTag();
        out.write(_jsp_string28, 0, _jsp_string28.length);
        if (_jsp_SelectTag_2 == null) {
          _jsp_SelectTag_2 = new org.apache.struts2.views.jsp.ui.SelectTag();
          _jsp_SelectTag_2.setPageContext(pageContext);
          _jsp_SelectTag_2.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SelectTag_2.setHeaderKey("");
          _jsp_SelectTag_2.setHeaderValue("-------------  Please Select  -------------");
        }

        _jsp_SelectTag_2.setList("areaList");
        _jsp_SelectTag_2.setName("areaId");
        _jsp_SelectTag_2.setId("areaId");
        _jsp_SelectTag_2.setListKey("id");
        _jsp_SelectTag_2.setListValue("name");
        int _jspEval41 = _jsp_SelectTag_2.doStartTag();
        _jsp_SelectTag_2.doEndTag();
        out.write(_jsp_string29, 0, _jsp_string29.length);
        _jsp_SelectTag_2.setList("provinceList");
        _jsp_SelectTag_2.setName("provinceId");
        _jsp_SelectTag_2.setId("provinceId");
        _jsp_SelectTag_2.setListKey("code");
        _jsp_SelectTag_2.setListValue("name");
        int _jspEval45 = _jsp_SelectTag_2.doStartTag();
        _jsp_SelectTag_2.doEndTag();
        out.write(_jsp_string30, 0, _jsp_string30.length);
        if (_jsp_SubmitTag_5 == null) {
          _jsp_SubmitTag_5 = new org.apache.struts2.views.jsp.ui.SubmitTag();
          _jsp_SubmitTag_5.setPageContext(pageContext);
          _jsp_SubmitTag_5.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SubmitTag_5.setName("save");
          _jsp_SubmitTag_5.setValue("Save");
          _jsp_SubmitTag_5.setMethod("save");
          _jsp_SubmitTag_5.setCssClass("button");
          _jsp_SubmitTag_5.setOnclick("return validateForm();");
        }

        int _jspEval49 = _jsp_SubmitTag_5.doStartTag();
        _jsp_SubmitTag_5.doEndTag();
        out.write(_jsp_string31, 0, _jsp_string31.length);
        if (_jsp_SubmitTag_6 == null) {
          _jsp_SubmitTag_6 = new org.apache.struts2.views.jsp.ui.SubmitTag();
          _jsp_SubmitTag_6.setPageContext(pageContext);
          _jsp_SubmitTag_6.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SubmitTag_6.setMethod("back");
          _jsp_SubmitTag_6.setValue("Back");
          _jsp_SubmitTag_6.setCssClass("button");
        }

        int _jspEval53 = _jsp_SubmitTag_6.doStartTag();
        _jsp_SubmitTag_6.doEndTag();
        out.write(_jsp_string32, 0, _jsp_string32.length);
        if (_jspEval2 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
          out = pageContext.popBody();
      }
      _jsp_FormTag_0.doEndTag();
      if (_jsp_endTagHack0 != null) {
        pageContext.releaseBody(_jsp_endTagHack0);
        _jsp_endTagHack0 = null;
      }
      out.write(_jsp_string33, 0, _jsp_string33.length);
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
      if (_jsp_TextFieldTag_4 != null)
        _jsp_TextFieldTag_4.release();
      if (_jsp_SubmitTag_5 != null)
        _jsp_SubmitTag_5.release();
      if (_jsp_SubmitTag_6 != null)
        _jsp_SubmitTag_6.release();
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
    _caucho_expr_0 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${id eq null}");
    _caucho_expr_1 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${empty sfiDisplay}");
    _caucho_expr_2 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${sfiDisplay ne null}");
    _caucho_expr_3 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${sfiDisplay}");
    _caucho_expr_4 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${branchCode}");
    _caucho_expr_5 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.errorMSG ne null}");
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("sfis/branch_code_show_detail.jsp"), -5491092588337787230L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    depend = new com.caucho.vfs.Depend(mergePath.lookup("jar:file:/J:/sfi-web-resin2/webapps/fsis2015/WEB-INF/lib/struts2-core-2.1.6.jar!/META-INF/struts-tags.tld"), 4562940134640561417L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.HiddenTag.class, -3857856297974974455L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.SelectTag.class, 3107940694844445683L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.TextFieldTag.class, -5073161277586165321L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.SubmitTag.class, 2704927420214496830L));
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

  private final static char []_jsp_string16;
  private final static char []_jsp_string33;
  private final static char []_jsp_string30;
  private final static char []_jsp_string11;
  private final static char []_jsp_string9;
  private final static char []_jsp_string1;
  private final static char []_jsp_string22;
  private final static char []_jsp_string31;
  private final static char []_jsp_string18;
  private final static char []_jsp_string25;
  private final static char []_jsp_string7;
  private final static char []_jsp_string0;
  private final static char []_jsp_string32;
  private final static char []_jsp_string12;
  private final static char []_jsp_string29;
  private final static char []_jsp_string24;
  private final static char []_jsp_string21;
  private final static char []_jsp_string15;
  private final static char []_jsp_string10;
  private final static char []_jsp_string2;
  private final static char []_jsp_string27;
  private final static char []_jsp_string19;
  private final static char []_jsp_string8;
  private final static char []_jsp_string13;
  private final static char []_jsp_string20;
  private final static char []_jsp_string4;
  private final static char []_jsp_string26;
  private final static char []_jsp_string6;
  private final static char []_jsp_string23;
  private final static char []_jsp_string17;
  private final static char []_jsp_string14;
  private final static char []_jsp_string5;
  private final static char []_jsp_string3;
  private final static char []_jsp_string28;
  static {
    _jsp_string16 = "\n                                                        ".toCharArray();
    _jsp_string33 = "\n</body>\n</html>".toCharArray();
    _jsp_string30 = "\n                                                </td>\n                                            </tr>\n                                        </table>\n                                        <table width=\"100%\">\n                                            <tr>\n                                                <td align=\"center\" colspan=\"3\">\n                                                    ".toCharArray();
    _jsp_string11 = "\n     ".toCharArray();
    _jsp_string9 = "\n            if (isEmptyById('nameTh')) {\n                alert('Please Input nameTh');\n                thisForm.nameTh.focus();\n                return false;\n            }\n            if (isEmptyById('nameEn')) {\n                alert('Please Input nameEn');\n                thisForm.nameEn.focus();\n                return false;\n            }\n            if (isEmptyById('areaId')) {\n                alert('Please Select Area');\n                thisForm.areaId.focus();\n                return false;\n            }\n            if (isEmptyById('provinceId')) {\n                alert('Please Select Province');\n                thisForm.provinceId.focus();\n                return false;\n            }\n            return true;\n        }\n\n        function validateBranchCode() {\n            if (isEmptyById('sfiId')) {\n                alert('Please Select Sfi !!');\n                document.getElementById('sfiId').focus();\n                return false;\n            }\n            if (isEmptyById('branchCode')) {\n                alert('Please Input branchCode !!');\n                documenst.getElementById('branchCode').focus();\n                return false;\n            }\n            else {\n                return checkBranchCode();\n            }\n        }\n\n        function checkBranchCode() {\n            var branchCode = document.getElementById('branchCode').value;\n            var sfiCode = document.getElementById('sfiId').value;\n            if (!isEmptyValue(branchCode) && !isEmptyValue(sfiCode)) {\n                AjaxManager.checkBranchCode(branchCode,sfiCode, function(isExits) {\n                    displayResult(isExits);\n                    return isExits;\n                });\n            }\n            return false;\n        }\n\n        function displayResult(result) {\n            if (result) {\n                document.getElementById('resultDisplay').innerHTML = '<font color=\"red\">Branch Code is Exists !!</font>';\n            } else {\n                document.getElementById('resultDisplay').innerHTML = 'OK !!';\n            }\n        }\n    </script>\n</head>\n<body>\n".toCharArray();
    _jsp_string1 = "/dwr/engine.js'></script>\n    <script type='text/javascript' src='".toCharArray();
    _jsp_string22 = " <font color=\"red\">Branch Code is Exists !!</font> ".toCharArray();
    _jsp_string31 = "&nbsp;\n                                                    ".toCharArray();
    _jsp_string18 = "\n                                                    <tr class=\"bgGreen1\">\n                                                        <td class=\"label\" width=\"20%\">Branch Code :</td>\n                                                        <td align=\"left\" width=\"80%\" colspan=\"3\">\n                                                              ".toCharArray();
    _jsp_string25 = "\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1\">\n                                                <td class=\"label\" width=\"20%\">Name (EN)<span\n                                                        class=\"require_field\">*</span> :\n                                                </td>\n                                                <td align=\"left\" width=\"80%\" colspan=\"3\">\n                                                    ".toCharArray();
    _jsp_string7 = "/includes/js/tp/validate.js\"></script>\n    <link href=\"../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css\" rel=\"stylesheet\" type=\"text/css\"/>\n    <script language=\"javascript\" src=\"../includes/js/tp/validate.js\"></script>\n    <script type=\"text/javascript\">\n        function validateForm() {\n            var thisForm = document.getElementsByTagName('form')[0];\n        ".toCharArray();
    _jsp_string0 = "\n\n\n\n<html>\n<head><title>Simple jsp page</title>\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"../includes/css/style.css\">\n    <script type=\"text/javascript\" src=\"../includes/jsCalendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js\"></script>\n    <script type='text/javascript' src='".toCharArray();
    _jsp_string32 = "\n                                                </td>\n                                            </tr>\n                                        </table>\n                                            \n                                    </td>\n                                    <td width=\"20px\">&nbsp;</td>\n                                </tr>\n                            </table>\n                        </td>\n                        <td width=\"28\" background=\"../images/table005.gif\">\n                            <img src=\"../images/table005.gif\" width=\"28\" height=\"37\" alt=\"\"></td>\n                    </tr>\n                    <tr>\n                        <td><img src=\"../images/table006.gif\" width=\"43\" height=\"23\" alt=\"\"></td>\n                        <td background=\"../images/table007.gif\"></TD>\n                        <td><img src=\"../images/table008.gif\" width=\"28\" height=\"23\" alt=\"\"></td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n".toCharArray();
    _jsp_string12 = "\n    <table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n        <tr>\n            <td>\n                <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                    <tr>\n                        <td width=\"43\"><img src=\"../images/table001.gif\" width=\"43\" height=\"43\" alt=\"\"></td>\n                        <td background=\"../images/table002.gif\">&nbsp;</td>\n                        <td width=\"173\"><img src=\"../images/table003.gif\" width=\"173\" height=\"43\" alt=\"\"></td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n        <tr>\n            <td>\n                <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                    <tr><td width=\"43\" background=\"../images/table004.gif\"><img src=\"../images/table004.gif\" width=\"43\" height=\"37\" alt=\"\"></td>\n                        <td><table width=\"100%\" border=\"0\" align=\"center\" style=\"height:100%\">\n                                <tr><td style=\"height:100%\">\n                                            \n                                        <table width=\"100%\">\n                                            <tr><td align=\"left\" colspan=\"2\"><b>Branch Code : Add/Edit</b></td></tr>\n                                        </table>\n                                        <table width=\"100%\" class=\"displayTable\" align=\"center\">\n                                            <tr class=\"bgGreen2\">\n                                                <td class=\"label\" width=\"20%\">SFIs :".toCharArray();
    _jsp_string29 = "\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen2\">\n                                                <td class=\"label\" width=\"20%\">Province Name<span\n                                                        class=\"require_field\">*</span> :\n                                                </td>\n                                                <td align=\"left\" width=\"80%\" colspan=\"3\">\n                                                    ".toCharArray();
    _jsp_string24 = "\n                                             <tr class=\"bgGreen2\">\n                                                <td class=\"label\" width=\"20%\">Name (TH)<span class=\"require_field\">*</span> :\n                                                </td>\n                                                <td align=\"left\" width=\"80%\" colspan=\"3\">\n                                                    ".toCharArray();
    _jsp_string21 = "&nbsp;\n                                                            <button type=\"button\" class=\"button\" onClick=\"validateBranchCode()\"> Check  </button>\n                                                            <span id=\"resultDisplay\"/>\n                                                            ".toCharArray();
    _jsp_string15 = "\n                                                            ".toCharArray();
    _jsp_string10 = "\n    ".toCharArray();
    _jsp_string2 = "/dwr/util.js'></script>\n    <script type='text/javascript' src='".toCharArray();
    _jsp_string27 = "\n                                                    <img alt=\"\" border=\"0\" src=\"../images/dd.gif\" name=\"dateBtn\"\n                                                         width=\"15\" height=\"15\"\n                                                         onclick=\"displayCalendar(document.forms[0].openDate,'dd/mm/yyyy',this);\"\n                                                         align=\"absmiddle\">\n                                                </td>\n                                                <td class=\"label\" width=\"15%\">Close Date :</td>\n                                                <td align=\"left\" width=\"45%\">\n                                                    ".toCharArray();
    _jsp_string19 = "\n                                                          </td>\n                                                    </tr>\n                                                ".toCharArray();
    _jsp_string8 = "\n            if (isEmptyById('sfiId')) {\n                alert('Please Select SFIs Name');\n                thisForm.sfiId.focus();\n                return false;\n            }\n            if (isEmptyById('branchCode')) {\n                alert('Please Input Branch Code');\n                thisForm.branchCode.focus();\n                return false;\n            } \n        ".toCharArray();
    _jsp_string13 = "<span class=\"require_field\">*</span>".toCharArray();
    _jsp_string20 = "\n                                                    <tr class=\"bgGreen1\">\n                                                        <td class=\"label\" width=\"20%\">Branch Code<span class=\"require_field\">*</span> : </td>\n                                                        <td align=\"left\" width=\"80%\" colspan=\"3\">\n                                                            ".toCharArray();
    _jsp_string4 = "/includes/js/manager.js'></script>\n    <script type='text/javascript' src='".toCharArray();
    _jsp_string26 = "\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen2\">\n                                                <td class=\"label\" width=\"20%\">Open Date :</td>\n                                                <td align=\"left\" width=\"20%\">\n                                                    ".toCharArray();
    _jsp_string6 = "/includes/js/tp/utils.js\"></script>\n    <script type='text/javascript' src=\"".toCharArray();
    _jsp_string23 = "\n                                                        </td>\n                                                    </tr>\n                                                ".toCharArray();
    _jsp_string17 = "\n                                                </td>\n                                            </tr>\n                                            ".toCharArray();
    _jsp_string14 = "</td>\n                                                <td align=\"left\" width=\"80%\" colspan=\"3\">\n                                                    ".toCharArray();
    _jsp_string5 = "/includes/js/util.js'></script>\n    <script type='text/javascript' src=\"".toCharArray();
    _jsp_string3 = "/dwr/interface/AjaxManager.js'></script>\n    <script type='text/javascript' src='".toCharArray();
    _jsp_string28 = "\n                                                    <img alt=\"\" border=\"0\" src=\"../images/dd.gif\" name=\"dateBtn\"\n                                                         width=\"15\" height=\"15\"\n                                                         onclick=\"displayCalendar(document.forms[0].closeDate,'dd/mm/yyyy',this);\"\n                                                         align=\"absmiddle\">\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1\">\n                                                <td class=\"label\" width=\"20%\">Area Name<span\n                                                        class=\"require_field\">*</span> :\n                                                </td>\n                                                <td align=\"left\" width=\"80%\" colspan=\"3\">\n                                                    ".toCharArray();
  }
}
