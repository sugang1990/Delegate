/*
 * JSP generated by Resin Professional 3.1.10 (built Tue, 23 Feb 2010 02:58:10 PST)
 */

package _jsp._web_22dinf._jsp;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;

public class _getdepartments__jsp extends com.caucho.jsp.JavaPage
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
       
  	String departNumber=null; 	
  	String departName=null;
  	String highDepartId=null;
  	boolean departState=false;
  	int levelId=0; 
  
      out.write(_jsp_string1, 0, _jsp_string1.length);
          
    int i=6;
	while(i-->0){
	highDepartId = "asdfa";
	departName = "asfasfasdf";
	departNumber = "asfdasdf";
	levelId = 343;
	departState = true;	
 	
      out.write(_jsp_string2, 0, _jsp_string2.length);
      out.print(( departNumber ));
      out.write(_jsp_string3, 0, _jsp_string3.length);
      out.print(( departName ));
      out.write(_jsp_string3, 0, _jsp_string3.length);
      out.print(( highDepartId ));
      out.write(_jsp_string4, 0, _jsp_string4.length);
      out.print(( levelId ));
      out.write(_jsp_string3, 0, _jsp_string3.length);
      out.print(( departState==true?"\u6b63\u5e38":"\u6302\u8d77" ));
      out.write(_jsp_string5, 0, _jsp_string5.length);
      
	}

      out.write(_jsp_string6, 0, _jsp_string6.length);
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
    depend = new com.caucho.vfs.Depend(appDir.lookup("WEB-INF/jsp/getDepartments.jsp"), -8590580355747392740L, false);
    com.caucho.jsp.JavaPage.addDepend(_caucho_depends, depend);
  }

  private final static char []_jsp_string6;
  private final static char []_jsp_string5;
  private final static char []_jsp_string3;
  private final static char []_jsp_string4;
  private final static char []_jsp_string0;
  private final static char []_jsp_string1;
  private final static char []_jsp_string2;
  static {
    _jsp_string6 = "\r\n<tr>\r\n	<td colspan=\"7\" align=\"center\"><a href=\"admin\">\u8fd4\u56de</a></td>\r\n    </tr>\r\n</table> \r\n</div> \r\n  </body>\r\n</html>\r\n".toCharArray();
    _jsp_string5 = "</td>   \r\n    <td width=\"50\"><a href=\"updateDepartment\">\u4fee\u6539</a></td>\r\n    <td width=\"50\"><a href=\"deleteDepartment\">\u5220\u9664</a></td>\r\n  </tr>\r\n  ".toCharArray();
    _jsp_string3 = "</td>\r\n    <td>".toCharArray();
    _jsp_string4 = "</td> \r\n    <td>".toCharArray();
    _jsp_string0 = "\r\n\r\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<html>\r\n  <head>\r\n    <title>\u663e\u793a\u6240\u6709\u7528\u6237</title> 	\r\n    <link href=\"css/Default.css\" type=\"text/css\" rel=\"stylesheet\">\r\n<style>\r\ntd{border:solid 1px #39C;}\r\n</style>\r\n</head>  \r\n  <body bgcolor=\"E7F2FF\"> \r\n  <div style=\"margin:20px auto;width:800px;height:auto;text-align:center\">\r\n  <p><font size=\"+3\" face=\"\u534e\u6587\u884c\u6977\">\u67e5\u770b\u6240\u6709\u90e8\u95e8</font></p>\r\n  ".toCharArray();
    _jsp_string1 = "\r\n  \r\n  <table width=\"70%\" cellspacing=\"0\" style=\" border:solid 1px #39C;\">\r\n  <tr>\r\n    <td colspan=\"7\" align=\"center\"><div align=\"center\">\u90e8\u95e8\u4fe1\u606f</div></td>\r\n    </tr>\r\n  <tr>\r\n    <td colspan=\"7\" align=\"right\" ><a href=\"addDepartment.jsp\"><font face=\"\u5b8b\u4f53\">\u65b0\u589e</font></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>\r\n    </tr>\r\n  <tr>\r\n    <td width=\"10%\">\u90e8\u95e8\u7f16\u53f7</td>\r\n    <td width=\"20%\">\u90e8\u95e8\u540d\u79f0</td>\r\n    <td width=\"20%\">\u4e0a\u7ea7\u90e8\u95e8\u7f16\u53f7</td>\r\n    <td width=\"10%\">\u7ea7\u522b\u5e8f\u53f7</td>\r\n    <td width=\"20%\">\u90e8\u95e8\u72b6\u6001</td>\r\n    <td colspan=\"2\">\u64cd\u4f5c</td>   \r\n    </tr>    \r\n    ".toCharArray();
    _jsp_string2 = "  \r\n 	 	\r\n  <tr>\r\n    <td>".toCharArray();
  }
}
