/*
 * JSP generated by Resin-3.1.9 (built Mon, 13 Apr 2009 11:09:12 PDT)
 */

package _jsp._category;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;

public class _structured_0dataset_0sub_0title__jsp extends com.caucho.jsp.JavaPage
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
    org.apache.struts2.views.jsp.ui.SelectTag _jsp_SelectTag_3 = null;
    org.apache.struts2.views.jsp.ui.SelectTag _jsp_SelectTag_4 = null;
    org.apache.struts2.views.jsp.ui.TextFieldTag _jsp_TextFieldTag_5 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_6 = null;
    org.apache.struts2.views.jsp.ui.CheckboxTag _jsp_CheckboxTag_7 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_8 = null;
    org.apache.struts2.views.jsp.ui.SubmitTag _jsp_SubmitTag_9 = null;
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
      _caucho_expr_0.print(out, _jsp_env, false);
      out.write(_jsp_string1, 0, _jsp_string1.length);
      com.caucho.jsp.BodyContentImpl _jsp_endTagHack0 = null;
      if (_jsp_FormTag_0 == null) {
        _jsp_FormTag_0 = new org.apache.struts2.views.jsp.ui.FormTag();
        _jsp_FormTag_0.setPageContext(pageContext);
        _jsp_FormTag_0.setParent((javax.servlet.jsp.tagext.Tag) null);
        _jsp_FormTag_0.setAction("structured_dataset_sub_title");
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
        }

        _jsp_HiddenTag_1.setName("id");
        int _jspEval5 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write('\n');
        _jsp_HiddenTag_1.setName("groupHidden");
        int _jspEval9 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write('\n');
        _jsp_HiddenTag_1.setName("titleHidden");
        int _jspEval13 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write('\n');
        _jsp_HiddenTag_1.setName("subTitleHidden");
        int _jspEval17 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write('\n');
        _jsp_HiddenTag_1.setName("versionHidden");
        int _jspEval21 = _jsp_HiddenTag_1.doStartTag();
        _jsp_HiddenTag_1.doEndTag();
        out.write(_jsp_string2, 0, _jsp_string2.length);
        if (_caucho_expr_1.evalBoolean(_jsp_env)) {
          out.write(_jsp_string3, 0, _jsp_string3.length);
        }
        out.write(_jsp_string4, 0, _jsp_string4.length);
        if (_caucho_expr_2.evalBoolean(_jsp_env)) {
          out.write(_jsp_string5, 0, _jsp_string5.length);
        }
        out.write(_jsp_string6, 0, _jsp_string6.length);
        if (_jsp_SelectTag_2 == null) {
          _jsp_SelectTag_2 = new org.apache.struts2.views.jsp.ui.SelectTag();
          _jsp_SelectTag_2.setPageContext(pageContext);
          _jsp_SelectTag_2.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SelectTag_2.setList("groupList");
          _jsp_SelectTag_2.setName("group");
          _jsp_SelectTag_2.setId("group");
          _jsp_SelectTag_2.setListKey("id");
          _jsp_SelectTag_2.setListValue("name");
          _jsp_SelectTag_2.setOnchange("findTitle(this.value)");
        }

        int _jspEval25 = _jsp_SelectTag_2.doStartTag();
        _jsp_SelectTag_2.doEndTag();
        out.write(_jsp_string7, 0, _jsp_string7.length);
        if (_jsp_SelectTag_3 == null) {
          _jsp_SelectTag_3 = new org.apache.struts2.views.jsp.ui.SelectTag();
          _jsp_SelectTag_3.setPageContext(pageContext);
          _jsp_SelectTag_3.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SelectTag_3.setList("titleList");
          _jsp_SelectTag_3.setName("title");
          _jsp_SelectTag_3.setId("title");
          _jsp_SelectTag_3.setListKey("id");
          _jsp_SelectTag_3.setListValue("name");
        }

        int _jspEval29 = _jsp_SelectTag_3.doStartTag();
        _jsp_SelectTag_3.doEndTag();
        out.write(_jsp_string8, 0, _jsp_string8.length);
        if (_jsp_SelectTag_4 == null) {
          _jsp_SelectTag_4 = new org.apache.struts2.views.jsp.ui.SelectTag();
          _jsp_SelectTag_4.setPageContext(pageContext);
          _jsp_SelectTag_4.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SelectTag_4.setName("priority");
          _jsp_SelectTag_4.setId("priority");
          _jsp_SelectTag_4.setCssStyle("width:40px");
        }

        _jsp_SelectTag_4.setList("#{'':'','1':'1','2':'2','3':'3'}");
        int _jspEval33 = _jsp_SelectTag_4.doStartTag();
        _jsp_SelectTag_4.doEndTag();
        out.write(_jsp_string9, 0, _jsp_string9.length);
        if (_jsp_TextFieldTag_5 == null) {
          _jsp_TextFieldTag_5 = new org.apache.struts2.views.jsp.ui.TextFieldTag();
          _jsp_TextFieldTag_5.setPageContext(pageContext);
          _jsp_TextFieldTag_5.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_TextFieldTag_5.setName("subTitle");
          _jsp_TextFieldTag_5.setId("subTitle");
          _jsp_TextFieldTag_5.setCssStyle("width:100%");
          _jsp_TextFieldTag_5.setMaxLength("256");
        }

        int _jspEval37 = _jsp_TextFieldTag_5.doStartTag();
        _jsp_TextFieldTag_5.doEndTag();
        out.write(_jsp_string10, 0, _jsp_string10.length);
        if (_caucho_expr_2.evalBoolean(_jsp_env)) {
          out.write(_jsp_string11, 0, _jsp_string11.length);
          if (_jsp_SubmitTag_6 == null) {
            _jsp_SubmitTag_6 = new org.apache.struts2.views.jsp.ui.SubmitTag();
            _jsp_SubmitTag_6.setPageContext(pageContext);
            _jsp_SubmitTag_6.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
            _jsp_SubmitTag_6.setType("image");
            _jsp_SubmitTag_6.setSrc("../images/delete.gif");
            _jsp_SubmitTag_6.setMethod("delete");
            _jsp_SubmitTag_6.setTitle("delete");
          }

          int _jspEval41 = _jsp_SubmitTag_6.doStartTag();
          _jsp_SubmitTag_6.doEndTag();
          out.write(_jsp_string12, 0, _jsp_string12.length);
        }
        out.write(_jsp_string13, 0, _jsp_string13.length);
        if (_jsp_CheckboxTag_7 == null) {
          _jsp_CheckboxTag_7 = new org.apache.struts2.views.jsp.ui.CheckboxTag();
          _jsp_CheckboxTag_7.setPageContext(pageContext);
          _jsp_CheckboxTag_7.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_CheckboxTag_7.setName("enable");
        }

        int _jspEval45 = _jsp_CheckboxTag_7.doStartTag();
        _jsp_CheckboxTag_7.doEndTag();
        out.write(_jsp_string14, 0, _jsp_string14.length);
        if (_jsp_SubmitTag_8 == null) {
          _jsp_SubmitTag_8 = new org.apache.struts2.views.jsp.ui.SubmitTag();
          _jsp_SubmitTag_8.setPageContext(pageContext);
          _jsp_SubmitTag_8.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SubmitTag_8.setName("ok");
          _jsp_SubmitTag_8.setValue("Save");
          _jsp_SubmitTag_8.setCssClass("button");
          _jsp_SubmitTag_8.setMethod("save");
          _jsp_SubmitTag_8.setOnclick("return validateForm()");
        }

        int _jspEval49 = _jsp_SubmitTag_8.doStartTag();
        _jsp_SubmitTag_8.doEndTag();
        out.write(_jsp_string15, 0, _jsp_string15.length);
        if (_jsp_SubmitTag_9 == null) {
          _jsp_SubmitTag_9 = new org.apache.struts2.views.jsp.ui.SubmitTag();
          _jsp_SubmitTag_9.setPageContext(pageContext);
          _jsp_SubmitTag_9.setParent((javax.servlet.jsp.tagext.Tag) _jsp_FormTag_0);
          _jsp_SubmitTag_9.setName("back");
          _jsp_SubmitTag_9.setValue("Back");
          _jsp_SubmitTag_9.setCssClass("button");
          _jsp_SubmitTag_9.setMethod("back");
        }

        int _jspEval53 = _jsp_SubmitTag_9.doStartTag();
        _jsp_SubmitTag_9.doEndTag();
        out.write(_jsp_string16, 0, _jsp_string16.length);
        if (_jspEval2 == javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED)
          out = pageContext.popBody();
      }
      _jsp_FormTag_0.doEndTag();
      if (_jsp_endTagHack0 != null) {
        pageContext.releaseBody(_jsp_endTagHack0);
        _jsp_endTagHack0 = null;
      }
      out.write(_jsp_string17, 0, _jsp_string17.length);
    } catch (java.lang.Throwable _jsp_e) {
      pageContext.handlePageException(_jsp_e);
    } finally {
      if (_jsp_FormTag_0 != null)
        _jsp_FormTag_0.release();
      if (_jsp_HiddenTag_1 != null)
        _jsp_HiddenTag_1.release();
      if (_jsp_SelectTag_2 != null)
        _jsp_SelectTag_2.release();
      if (_jsp_SelectTag_3 != null)
        _jsp_SelectTag_3.release();
      if (_jsp_SelectTag_4 != null)
        _jsp_SelectTag_4.release();
      if (_jsp_TextFieldTag_5 != null)
        _jsp_TextFieldTag_5.release();
      if (_jsp_SubmitTag_6 != null)
        _jsp_SubmitTag_6.release();
      if (_jsp_CheckboxTag_7 != null)
        _jsp_CheckboxTag_7.release();
      if (_jsp_SubmitTag_8 != null)
        _jsp_SubmitTag_8.release();
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
    manager.addTaglibFunctions(_jsp_functionMap, "c", "http://java.sun.com/jstl/core_rt");
    com.caucho.jsp.PageContextImpl pageContext = new com.caucho.jsp.PageContextImpl(webApp, this);
    _caucho_expr_0 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${requestScope.endNode}");
    _caucho_expr_1 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${empty requestScope.id}");
    _caucho_expr_2 = com.caucho.jsp.JspUtil.createExpr(pageContext.getELContext(), "${not empty requestScope.id}");
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("category/structured_dataset_sub_title.jsp"), -2579707838754576189L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    depend = new com.caucho.vfs.Depend(mergePath.lookup("jar:file:/J:/sfi-web-resin2/webapps/fsis2015/WEB-INF/lib/struts2-core-2.1.6.jar!/META-INF/struts-tags.tld"), 4562940134640561417L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.HiddenTag.class, -3857856297974974455L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.SelectTag.class, 3107940694844445683L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.TextFieldTag.class, -5073161277586165321L));
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, new com.caucho.make.ClassDependency(org.apache.struts2.views.jsp.ui.SubmitTag.class, 2704927420214496830L));
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

  private final static char []_jsp_string4;
  private final static char []_jsp_string7;
  private final static char []_jsp_string9;
  private final static char []_jsp_string8;
  private final static char []_jsp_string2;
  private final static char []_jsp_string14;
  private final static char []_jsp_string12;
  private final static char []_jsp_string15;
  private final static char []_jsp_string13;
  private final static char []_jsp_string16;
  private final static char []_jsp_string1;
  private final static char []_jsp_string3;
  private final static char []_jsp_string10;
  private final static char []_jsp_string6;
  private final static char []_jsp_string5;
  private final static char []_jsp_string11;
  private final static char []_jsp_string17;
  private final static char []_jsp_string0;
  static {
    _jsp_string4 = "\n                                                        ".toCharArray();
    _jsp_string7 = "\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1\">\n                                                <td class=\"label\">Title :</td>\n                                                <td colspan=\"2\">\n                                                    ".toCharArray();
    _jsp_string9 = "\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen1\">\n                                                <td width=\"25%\" class=\"label\">Sub Title<span class=\"require_field\">*</span> :</td>\n                                                <td width=\"65%\">".toCharArray();
    _jsp_string8 = "\n                                                </td>\n                                            </tr>\n                                             <tr class=\"bgGreen2\">\n                                                <td class=\"label\">Priority<span class=\"require_field\">*</span> :</td>\n                                                <td colspan=\"2\">\n                                                     ".toCharArray();
    _jsp_string2 = "\n    <table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\n        <tr>\n            <td>\n                <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                    <tr>\n                        <td width=\"43\"><img src=\"../images/table001.gif\" width=\"43\" height=\"43\" alt=\"\"></td>\n                        <td background=\"../images/table002.gif\">&nbsp;</td>\n                        <td width=\"173\"><img src=\"../images/table003.gif\" width=\"173\" height=\"43\" alt=\"\"></td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n        <tr>\n            <td>\n                <table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n                    <tr>\n                        <td width=\"43\" background=\"../images/table004.gif\"><img src=\"../images/table004.gif\" width=\"43\" height=\"37\" alt=\"\"></td>\n                        <td>\n                            <table width=\"100%\" border=\"0\" align=\"center\" style=\"height:100%\">\n                                <tr>\n                                    <td style=\"height:100%\">\n                                        \n                                        <table width=100%>\n                                            <tr>\n                                                <td>\n                                                    <b>\n                                                        ".toCharArray();
    _jsp_string14 = "</td>\n                                            </tr>\n                                        </table>\n                                        <table width=\"100%\">\n                                            <tr>\n                                                <td width=\"100%\" align=\"center\">\n                                                    ".toCharArray();
    _jsp_string12 = "\n                                                        </div>\n                                                    ".toCharArray();
    _jsp_string15 = "\n                                                    ".toCharArray();
    _jsp_string13 = "\n                                                </td>\n                                            </tr>\n                                            <tr class=\"bgGreen2\">\n                                                <td class=\"label\">Enable :</td>\n                                                <td colspan=\"2\">".toCharArray();
    _jsp_string16 = "\n                                                </td>\n                                            </tr>\n                                        </table>\n                                        \n                                    </td>\n                                    <td width=\"20px\">&nbsp;</td>\n                                </tr>\n                            </table>\n                        </td>\n                        <td width=\"28\" background=\"../images/table005.gif\"><img src=\"../images/table005.gif\" width=\"28\" height=\"37\" alt=\"\"></td>\n                    </tr>\n                    <tr>\n                        <td><img src=\"../images/table006.gif\" width=\"43\" height=\"23\" alt=\"\"></td>\n                        <td background=\"../images/table007.gif\"></TD>\n                        <td><img src=\"../images/table008.gif\" width=\"28\" height=\"23\" alt=\"\"></td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n".toCharArray();
    _jsp_string1 = "){\n            alert(\"Can't delete this node have child node\");\n            return false;\n        }\n        if (confirm(\"Do you want to delete this record ?\")) {\n            return true;\n        }\n        return false;\n    }\n</script>\n</head>\n<body>\n".toCharArray();
    _jsp_string3 = "Add Sub Title".toCharArray();
    _jsp_string10 = "</td>\n                                                <td width=\"10%\">\n                                                    ".toCharArray();
    _jsp_string6 = "\n                                                    </b>\n                                                </td>\n                                            </tr>\n                                        </table>\n                                        <table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"1\" cellspacing=\"1\" class=\"displayTable\">\n                                            <tr class=\"bgGreen2\">\n                                                <td class=\"label\">Group :</td>\n                                                <td colspan=\"2\">\n                                                    ".toCharArray();
    _jsp_string5 = "Edit Sub Title".toCharArray();
    _jsp_string11 = "\n                                                        <div onClick=\"return confirmDelete();\">\n                                                            ".toCharArray();
    _jsp_string17 = "\n<script type=\"text/javascript\">\n    var thisForm = document.getElementsByTagName('form')[0];\n    if(thisForm.id.value != ''){\n        thisForm.group.disabled = true;\n        thisForm.title.disabled = true;\n    }\n</script>\n</body>\n</html>\n".toCharArray();
    _jsp_string0 = "\n\n\n<html>\n<head>\n<title>Simple jsp page</title>\n<link rel=\"stylesheet\" type=\"text/css\" href=\"../includes/css/style.css\">\n<script type=\"text/javascript\" src=\"../includes/js/tp/utils.js\"></script>\n<script type=\"text/javascript\" src=\"../dwr/interface/AjaxManager.js\">;</script>\n<script type=\"text/javascript\" src=\"../dwr/engine.js\">;</script>\n<script type=\"text/javascript\" src=\"../dwr/util.js\">;</script>\n<script type=\"text/javascript\">\n    function validateForm(){\n        if(thisForm.priority.value == ''){\n            alert('Please Input Priority');\n            thisForm.priority.focus();\n            return false;\n        }\n        if(trim(thisForm.subTitle.value) == ''){\n            alert('Please Input Sub Title');\n            thisForm.subTitle.focus();\n            return false;\n        }\n        return true;\n    }\n\n    function findTitle(groupId){\n        AjaxManager.findDsTitleById(groupId, function(data) {\n            dwr.util.removeAllOptions(\"title\");\n            dwr.util.addOptions(\"title\", data, \"id\", \"name\");\n        });\n    }\n\n    function confirmDelete() {\n        if(! ".toCharArray();
  }
}