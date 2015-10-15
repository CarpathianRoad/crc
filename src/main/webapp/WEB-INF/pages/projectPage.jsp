<%-- 
    Document   : projectPage
    Created on : Oct 8, 2015, 11:50:42 AM
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
	<link href="${Constants.URL}css/main.css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
        <script>
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
            })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

            ga('create', 'UA-68878185-1', 'auto');
            ga('send', 'pageview');

        </script>
    </head>
    <body class="en" id="project-body">
        <header role="banner">
            <div class="sub-header">
                <div class="project-top-block">
                    <ul class="language-block">
                        <li class="active"><a href="">UA</a></li>
                        <li><a href="">EN</a></li>
                    </ul>
                    <a class="home-icon" href="${Constants.URL}${lan}/index"><img class="home-button" src="${Constants.URL}images/home-icon.png" />
                        <h3>Carpathian Road</h3></a>
                </div>
                <div class="logo-block">
                    <a class="brand" href="${Constants.URL}${lan}/index"><img src="${Constants.URL}images/logo-white.png" /></a>
                </div>
            </div>
	</header>
	<main role="main">
		<section>
			<div class="main-block">
                            <c:choose>
                                    <c:when test="${lan == 'ua'}">
                                        <div class="main-header-block">
                                            <h4>${project.project_name_ua}</h4>
                                        </div>
                                        <div class="text-block">
                                            ${project.project_text_ua}
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="main-header-block">
                                            <h4>${project.project_name_en}</h4>
                                        </div>
                                        <div class="text-block">
                                            ${project.project_text_en}
                                        </div>
                                    </c:otherwise>
                                </c:choose>
			</div>
		</section>
	</main>
	<footer role="contentinfo">
            <div>
                Developed by <a href="http://www.aits.ua/" target="_blank"><span class="reserved"> AITS</span></a>
            </div>
	</footer>
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
	<script src="${Constants.URL}js/plugins/plugin.js"></script>
    </body>
</html>
