<%-- 
    Document   : login
    Created on : Oct 7, 2015, 12:28:52 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="Constants" class="ua.aits.crc.functions.Constants" scope="session"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Carpathian Road</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="image/png" href="${Constants.URL}images/favicon.ico"/>
	<link href="${Constants.URL}css/login.css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
    </head>
    <body class="en">
        <div class="login">
            <div class="heading">
                <h2>Sign in</h2>
                <form id="login_form" role="form" name="login-form" action="${Constants.URL}system/do/login" method="POST">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" name="user_name" class="form-control" id="user_name" placeholder="Username">
                    </div>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" name="user_password" class="form-control" id="user_password" placeholder="Password">
                    </div>
                </form>
                <button class="float submit-button">Login</button>
                <div class="validation"></div>
            </div>
        </div>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	<script src="${Constants.URL}js/jquery-1.8.2.min.js" type="text/javascript"></script>
	<script src="${Constants.URL}js/jquery-ui.min.js"></script>
        <script>
            $('#user_password').keypress(function (e) {
                var key = e.which;
                if(key === 13)
                {
                   $(".submit-button").click();
                }
            }); 
            $(".submit-button").click(function(){
                $(".validation").html("");
                $.ajax({
                    type: "get",
                    url: "${Constants.URL}system/ajax/checkUser",
                    cache: false,    
                    data:'user_name='+ $("#user_name").val() +'&user_password='+$("#user_password").val(),
                    success: function(response){
                        if(response === "" || response === null){
                              $(".validation").html("Bad login or password");
                        }
                        else {
                            $("#login_form").submit();
                        }
                    }, 
                    error: function(response){      
                        console.log(response);
                    }
                });
            });  
        </script>
    </body>
</html>

