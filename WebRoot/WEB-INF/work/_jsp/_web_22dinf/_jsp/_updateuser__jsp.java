/*
 * JSP generated by Resin Professional 3.1.10 (built Tue, 23 Feb 2010 02:58:10 PST)
 */

package _jsp._web_22dinf._jsp;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import java.util.*;

public class _updateuser__jsp extends com.caucho.jsp.JavaPage
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
    response.setContentType("text/html");
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
    try {
      out.write(_jsp_string0, 0, _jsp_string0.length);
       String userName=request.getParameter("userName")==null?"":request.getParameter("userName"); 
      out.write(_jsp_string1, 0, _jsp_string1.length);
      out.print((userName));
      out.write(_jsp_string2, 0, _jsp_string2.length);
    } catch (java.lang.Throwable _jsp_e) {
      pageContext.handlePageException(_jsp_e);
    } finally {
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
    if (com.caucho.server.util.CauchoSystem.getVersionId() != 7394374792971521532L)
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
    com.caucho.jsp.PageContextImpl pageContext = new com.caucho.jsp.PageContextImpl(webApp, this);
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("WEB-INF/jsp/updateUser.jsp"), 4033075129515173926L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  private final static char []_jsp_string2;
  private final static char []_jsp_string1;
  private final static char []_jsp_string0;
  static {
    _jsp_string2 = "\" class=\"text\"/></td>\r\n  </tr>\r\n\r\n  <tr>\r\n\r\n    <td align=\"right\">\u90e8\u95e8\uff1a</td>\r\n    <td>\r\n     <select name=\"department\">\r\n       <option value=\"cn\">cn</option>\r\n       <option value=\"abiz\">abiz</option>\r\n       <option value=\"focustech\">focustech</option>\r\n      </select>\r\n    </td>\r\n    </tr>\r\n    \r\n    <tr>\r\n     <td align=\"right\">\u85aa\u6c34\uff1a</td>\r\n     <td width=\"60%\"><input type=\"text\" name=\"salary\"/></td>\r\n     </tr>\r\n     \r\n  <tr>\r\n    <td colspan=\"2\" align=\"center\">\r\n    <input type=\"submit\" value=\"\u63d0\u4ea4\"/>\r\n    <a href=\"/employee/getUsers\">\u8fd4\u56de</a>\r\n    </td>\r\n    </tr>\r\n</table>\r\n</form>\r\n    </div>\r\n  </body>\r\n</html>\r\n".toCharArray();
    _jsp_string1 = "\r\n\r\n<html>\r\n  <head>    \r\n    <title>\u4fee\u6539\u7528\u6237</title>	\r\n    <LINK href=\"/css/Default.css\" type=\"text/css\" rel=\"stylesheet\" />\r\n</head>\r\n<style>\r\n	.text{width:150px; height:20px; border:solid 1px #699; background:#CFC;}\r\n	p{ margin-top:30px;}\r\n	#main{ text-align:center;}\r\n</style>\r\n\r\n\r\n<body bgcolor=\"E7F2FF\">\r\n  <div id=\"main\">\r\n    <form name=\"formUpdateUser\" method=\"post\" action=\"/employee/submit\">\r\n    <p><font size=\"+3\" face=\"\u534e\u6587\u884c\u6977\">\u4fee\u6539\u7528\u6237</font></p>\r\n    <input type=\"hidden\" name=\"action\" value=\"update\">    \r\n    <table width=\"49%\"  border=\"1\" cellpadding=\"4\" cellspacing=\"0\" bordercolor=\"#3E8A91\" bgcolor=\"E7F2FF\" align=\"center\">\r\n  <tr>\r\n    <td width=\"40%\" align=\"right\">\u7528\u6237\u540d\uff1a</td>\r\n    <td width=\"60%\"><input type=\"text\"  name=\"name\" value=\"".toCharArray();
    _jsp_string0 = "\r\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n\r\n".toCharArray();
  }
}
