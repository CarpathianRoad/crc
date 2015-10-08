<%-- 
    Document   : projectPage
    Created on : Oct 8, 2015, 11:50:42 AM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Carpathian Road</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="image/png" href="./images/favicon.ico"/>
	<link href="./css/main.css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    </head>
    <body class="en" id="project-body">
        <header role="banner">
            <div class="sub-header">
                <div class="project-top-block">
                    <ul class="language-block">
                        <li class="active"><a href="">UA</a></li>
                        <li class="separator">|</li>
                        <li><a href="">EN</a></li>
                    </ul>
                    <a class="home-icon" href="${Consntants.URL}index"><img class="home-button" src="images/home-icon.png" /></a>
                </div>
                <div class="logo-block">
                    <a class="brand"><img src="images/logo-white.png" /></a>
                </div>
            </div>
	</header>
	<main role="main">
		<section>
			<div class="main-block">
				<div class="main-header-block">
					<h4>Енергозбереження</h4>
				</div>
					<div class="text-block">
						Ми реалізуємо проекти в галузі енергозбереження суспільно-значущих об’єктів, впровадження інноваційних технологій енергоефективності.
							Успішним прикладом виконання таких ініціатив є проект «Через енергію надихаємо наступні покоління» по впровадженню нових технологій з енергозбереження в дитячому садочку. 
						
					</div>
				
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
	<script src="./js/plugins/plugin.js"></script>
    </body>
</html>
