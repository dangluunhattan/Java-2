package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.NumberFormat;
import model.Product;
import dao.ProductDAO;

public final class productall_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>Product</title>\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("<!--Less styles -->\n");
      out.write("   <!-- Other Less css file //different less files has different color scheam\n");
      out.write("\t<link rel=\"stylesheet/less\" type=\"text/css\" href=\"themes/less/simplex.less\">\n");
      out.write("\t<link rel=\"stylesheet/less\" type=\"text/css\" href=\"themes/less/classified.less\">\n");
      out.write("\t<link rel=\"stylesheet/less\" type=\"text/css\" href=\"themes/less/amelia.less\">  MOVE DOWN TO activate\n");
      out.write("\t-->\n");
      out.write("\t<!--<link rel=\"stylesheet/less\" type=\"text/css\" href=\"themes/less/bootshop.less\">\n");
      out.write("\t<script src=\"themes/js/less.js\" type=\"text/javascript\"></script> -->\n");
      out.write("\t\n");
      out.write("<!-- Bootstrap style --> \n");
      out.write("    <link id=\"callCss\" rel=\"stylesheet\" href=\"themes/bootshop/bootstrap.min.css\" media=\"screen\"/>\n");
      out.write("    <link href=\"themes/css/base.css\" rel=\"stylesheet\" media=\"screen\"/>\n");
      out.write("<!-- Bootstrap style responsive -->\t\n");
      out.write("\t<link href=\"themes/css/bootstrap-responsive.min.css\" rel=\"stylesheet\"/>\n");
      out.write("\t<link href=\"themes/css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- Google-code-prettify -->\t\n");
      out.write("\t<link href=\"themes/js/google-code-prettify/prettify.css\" rel=\"stylesheet\"/>\n");
      out.write("<!-- fav and touch icons -->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"themes/images/ico/favicon.ico\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"themes/images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"themes/images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"themes/images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"themes/images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("\t<style type=\"text/css\" id=\"enject\"></style>\n");
      out.write("  </head>\n");
      out.write("    <body>\n");
      out.write("        ");

     ProductDAO productDAO = new ProductDAO();
     Product product = new Product();
     String productID = "";
     if (request.getParameter("product") != null) {
          productID = request.getParameter("product");
          product = productDAO.getProduct(Long.parseLong(productID));
     }
      String category_id = "";
            if(request.getParameter("category")!=null){
                category_id = request.getParameter("category");
            }

      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <div id=\"mainBody\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t<div class=\"row\">\n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\n");
      out.write("\t<div class=\"span9\">\n");
      out.write("    <ul class=\"breadcrumb\">\n");
      out.write("\t\t<li><a href=\"index.jsp\">Trang chủ</a> <span class=\"divider\">/</span></li>\n");
      out.write("\t\t<li class=\"active\">Products Name</li>\n");
      out.write("    </ul>\n");
      out.write("\t<h3> Products Name <small class=\"pull-right\"> 40 products are available </small></h3>\t\n");
      out.write("\t\n");
      out.write("\t  \n");
      out.write("<div id=\"myTab\" class=\"pull-right\">\n");
      out.write("</div>\n");
      out.write("<br class=\"clr\"/>\n");
      out.write("<div class=\"tab-content\">\n");
      out.write("\n");
      out.write("\t<div class=\"tab-pane  active\" id=\"blockView\">\n");
      out.write("\t\t<ul class=\"thumbnails\">\n");
      out.write("                              \n");
      out.write("\t\t\t\t ");

                                                            for (Product p : productDAO.getListProductAll()) {
                                                        
      out.write("\n");
      out.write("                                                        <li class=\"span3\">\n");
      out.write("                                                            <div class=\"thumbnail\" style=\"height: 390px;\">\n");
      out.write("                                                                <a href=\"detail.jsp?product=");
      out.print(p.getProductID());
      out.write("\"><img style=\"height: 210px;\" src=\"upload/product/");
      out.print(p.getProductImage());
      out.write("\" alt=\"");
      out.print(p.getProductName());
      out.write("\"/></a>\n");
      out.write("\t\t\t\t<div class=\"caption\">\n");
      out.write("\t\t\t\t  <h5>");
      out.print(p.getProductName());
      out.write("</h5>\n");
      out.write("                                                                            <h4 style=\"text-align:center\"><a class=\"btn btn-primary\" href=\"#\">Giá:");
      out.print(NumberFormat.getInstance().format(p.getProductPrice()));
      out.write(" VNĐ</a></h4>\n");
      out.write("\t\t\t\t   <h4 style=\"text-align:center\"><a class=\"btn\" href=\"detail.jsp?product=");
      out.print(p.getProductID());
      out.write("\"> <i class=\"icon-zoom-in\"></i></a> <a class=\"btn\" href=\"#\">Thêm giỏ hàng <i class=\"icon-shopping-cart\"></i></a> </h4>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t</li>\n");
      out.write("                                                        \n");
      out.write("                                                        ");

                                                            }
                                                        
      out.write("\n");
      out.write("\t\t\t  </ul>\t\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t<div class=\"pagination\">\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t<li><a href=\"#\">&lsaquo;</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">1</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">2</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">3</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">4</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">...</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">&rsaquo;</a></li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<br class=\"clr\"/>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}