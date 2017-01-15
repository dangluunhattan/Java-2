

<%-- 
    Document   : register
    Created on : Nov 28, 2016, 9:33:32 PM
    Author     : TAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Register</title>
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
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"  type="text/javascript"></script>        
    <script type="text/javascript">             
        $(document).ready(function () {                 
            var x_timer;                 
            $("#email").keyup(function (e) {                 
                clearTimeout(x_timer);                       
                var user_name = $(this).val();                  
                x_timer = setTimeout(function () {                   
                    check_username_ajax(user_name);         
                }, 1000);                   
            });                
            function check_username_ajax(username) {           
                $("#user-result").html('<img src="upload/ajax-loader.gif" />');         
                $.post('CheckEmail', {'username': username}, function (data) {                 
                    $("#user-result").html(data);            
                });              
            }         
        });         
     </script>
  </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="mainBody">
	<div class="container">
	<div class="row">
                    <jsp:include page="sidebar.jsp"></jsp:include>
	<div class="span9">	
			  		
    <ul class="breadcrumb">
        <li><a href="http://localhost:8080/webproduct/">Trang chủ</a> <span class="divider">/</span></li>
        <li><a href="http://localhost:8080/webproduct/user/login">Đăng nhập</a> <span class="divider">/</span></li>
        <li class="active">Đăng ký</li>
    </ul>
    <h3>ĐĂNG KÝ</h3>  
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
        
    <form action="UsersServlet" method="POST">
                        <div>
                            <span class="word">Username *</span>
                            <input type="text" name="email" id="email">
                            <span id="user-result"></span>
                        </div> 	
                        <div> 
                            <span class="word">Password *</span>
                            <input type="password" name="pass">
                            <span></span>
                        </div>			
                         <div class="control-group">
                            <div class="controls">
                                <input type="hidden" value="insert" name="command" >
                                 <input type="submit" value="Đăng ký" class="btn btn-success"  style="margin-left: 71px"> 
                            </div>
                        </div>
                    </form>   
    </form>
</div>
				</div>
</div>
</div>
</div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    
</html>
