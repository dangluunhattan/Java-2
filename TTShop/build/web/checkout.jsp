<%-- 
    Document   : checkout
    Created on : Jan 11, 2017, 5:14:14 PM
    Author     : TAN
--%>

<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Thanh to</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<!--Less styles -->
   <!-- Other Less css file //different less files has different color scheam
	<link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
	-->
	<!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
	<script src="themes/js/less.js" type="text/javascript"></script> -->
	
<!-- Bootstrap style --> 
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen"/>
    <link href="themes/css/base.css" rel="stylesheet" media="screen"/>
<!-- Bootstrap style responsive -->	
	<link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet"/>
	<link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->	
	<link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet"/>
<!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css" id="enject"></style>
  </head>
    <body>
        <%
            Users users = (Users) session.getAttribute("user");
            if (users == null) {
                response.sendRedirect("/TTShop/login.jsp");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="mainBody">
	<div class="container">
	<div class="row">
                    <jsp:include page="sidebar.jsp"></jsp:include>
	<div class="span9">
			  		
    <ul class="breadcrumb">
        <li><a href="http://localhost:8080/webproduct/">Trang chủ</a> <span class="divider">/</span></li>
        <li><a href="http://localhost:8080/webproduct/cart/index">Giỏ hàng</a> <span class="divider">/</span></li>
        <li class="active">Thanh toán</li>
    </ul>
    <h3>THANH TOÁN</h3>  
    <div class="well">
    
    <!-- <div class="alert alert-info fade in">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
     </div>
    <div class="alert fade in">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>Lorem Ipsum is simply dummy</strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
     </div>
     <div class="alert alert-block alert-error fade in">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>Lorem Ipsum is simply</strong> dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
     </div>  -->

   <form action="CheckOutServlet" method="POST">
                        <div class="control-group">
                            <span>Address *</span>
                            <input type="text" name="address" style="margin-left: 4px;">
                        </div> 	
                        <div class="control-group">
                            <span>Payment *</span>
                            <select name="payment">
                                <option value="Bank transfer"> Bank transfer</option>
                                <option value="Live"> Live</option>
                            </select>
                        </div> 			
                        <div class="control-group">
            <div class="controls">
                <input type="submit" class="btn btn-success" value="Thanh toán" name="submit" style="margin-left: 66px;">
                <a href="index.jsp" class="btn btn-link">Quay lại trang chủ?</a>
            </div>
        </div>
                    </form>
</div>
				</div>
</div>
</div>
</div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>



