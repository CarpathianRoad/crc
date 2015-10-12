<%-- 
    Document   : tenerife
    Created on : Oct 12, 2015, 11:38:56 AM
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
                                            <h4>TENERIFE</h4>
                                        </div>
                                        <div class="text-block">
                                            <p>
                                                Проект  “Через енергію надихаємо майбутні покоління” виконувався на підтримку заходів з підвищення енергоефективності в малих містах України в рамках Програми підтримки реалізації енергетичної стратегії України  в галузі енергоефективності та відновлювальних  джерел енергії.
                                            </p>  
                                            <p style="text-align: center;margin-top: 68px;"><img src="${Constants.URL}files/images/tenerife-logo.png"></p>
                                            <p>
                                                <strong>Виконавець проекту:</strong> ГО «Перехресні зв’язки» 
                                            </p>
                                            <p>
                                                <strong>Партнер проекту:</strong> Іршавська міська рада
                                            </p>
                                            <p>

                                                <strong>Термін реалізації проекту:</strong> 22.12.2012р. - 21.03.2014р.
                                            </p>
                                            <p>

                                                <strong>Результати:</strong>
                                            </p>
                                            <p>
                                                
                                                <strong>1.1	Покращення енергетичної ефективності у дитячому садку №1 </strong><br/>
                                                -	Встановлено  сонячні колектори; <br/>
                                                -	Замінено систему опалення; <br/>
                                                -	Замінено вікна та двері; <br/>
                                                -	Теплоізольовано фасад будівлі. 
                                            </p>
                                            <p>
                                                <img src="${Constants.URL}files/images/tenerife-1.png">
                                            </p>
                                            <p style=" margin-top: 43px;text-align: center;">
                                                <span>Фото 2013 року.</span><br/>
                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-2.png"><br/>
                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-3.png">
                                            </p>
                                            <br/>
                                            <p style=" margin-top: -12px;;text-align: center;">
                                                <span>Фото 2014 року.</span><br/>
                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-4.png"><br/>
                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-5.png">
                                            </p>
                                            <p style="padding-right: 15px; margin-top: 60px;line-height: 120%;">
                                                <strong>2.1	Підвищення обізнаності щодо проблеми неефективного використання енергії у дитячих садках малих міст України та забезпечення інформаційної підтримки.</strong><br/>
                                        -	Проведено енергоаудит до/після реконструкції та розповсюджено їх результати серед освітніх закладів малих міст Закарпаття;<br/>
                                        -	Розроблено Практичний посібник щодо покращення енергоефективиності.
                                            </p>
                                            <p style="padding-right: 47px;margin-top: 75px;line-height: 120%;">
                                            <strong>3.1 Підвищення рівня зацікавленості молоді в проблемах енергоефективності та енергозбереження</strong><br/>
                                            -	Проведено навчання по енергозбереженню Літня школа “Тиждень енергії” для 25 учнів 6 малих міст Закарпаття. 
                                            </p>
                                            <p>
                                                <img style="margin-left: -50px;margin-top: 7px;" src="${Constants.URL}files/images/tenerife-6.png">
                                            </p>
                                            <p style="padding-right: 92px;margin-top: 70px;line-height: 120%;">
                                            <strong>4.1	Покращення рівня менеджменту реалізації енергоефективних проектів державними службовцями шести малих міст Закарпаття</strong><br/>
                                            -	Проведено тренінг по енергозбереженню для держслужбовців;<br/>
                                            -	Шість малих міст Закарпаття забезпечені Практичним посібником щодо покращення енергоефективиності.
                                            </p>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="main-header-block">
                                            <h4>TENERIFE</h4>
                                        </div>
                                        <div class="text-block">
                                            <p>
                                                Проект  “Через енергію надихаємо майбутні покоління” виконувався на підтримку заходів з підвищення енергоефективності в малих містах України в рамках Програми підтримки реалізації енергетичної стратегії України  в галузі енергоефективності та відновлювальних  джерел енергії.
                                            </p>  
                                            <p style="text-align: center;margin-top: 68px;"><img src="${Constants.URL}files/images/tenerife-logo.png"></p>
                                            <p>
                                                <strong>Виконавець проекту:</strong> ГО «Перехресні зв’язки» 
                                            </p>
                                            <p>
                                                <strong>Партнер проекту:</strong> Іршавська міська рада
                                            </p>
                                            <p>

                                                <strong>Термін реалізації проекту:</strong> 22.12.2012р. - 21.03.2014р.
                                            </p>
                                            <p>

                                                <strong>Результати:</strong>
                                            </p>
                                            <p>
                                                
                                                <strong>1.1	Покращення енергетичної ефективності у дитячому садку №1 </strong><br/>
                                                -	Встановлено  сонячні колектори; <br/>
                                                -	Замінено систему опалення; <br/>
                                                -	Замінено вікна та двері; <br/>
                                                -	Теплоізольовано фасад будівлі. 
                                            </p>
                                            <p>
                                                <img src="${Constants.URL}files/images/tenerife-1.png">
                                            </p>
                                            <p style=" margin-top: 43px;text-align: center;">
                                                <span>Фото 2013 року.</span><br/>
                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-2.png"><br/>
                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-3.png">
                                            </p>
                                            <br/>
                                            <p style=" margin-top: -12px;;text-align: center;">
                                                <span>Фото 2014 року.</span><br/>
                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-4.png"><br/>
                                                <img style="margin-top: 14px;" src="${Constants.URL}files/images/tenerife-5.png">
                                            </p>
                                            <p style="padding-right: 15px; margin-top: 60px;line-height: 120%;">
                                                <strong>2.1	Підвищення обізнаності щодо проблеми неефективного використання енергії у дитячих садках малих міст України та забезпечення інформаційної підтримки.</strong><br/>
                                        -	Проведено енергоаудит до/після реконструкції та розповсюджено їх результати серед освітніх закладів малих міст Закарпаття;<br/>
                                        -	Розроблено Практичний посібник щодо покращення енергоефективиності.
                                            </p>
                                            <p style="padding-right: 47px;margin-top: 75px;line-height: 120%;">
                                            <strong>3.1 Підвищення рівня зацікавленості молоді в проблемах енергоефективності та енергозбереження</strong><br/>
                                            -	Проведено навчання по енергозбереженню Літня школа “Тиждень енергії” для 25 учнів 6 малих міст Закарпаття. 
                                            </p>
                                            <p>
                                                <img style="margin-left: -50px;margin-top: 7px;" src="${Constants.URL}files/images/tenerife-6.png">
                                            </p>
                                            <p style="padding-right: 92px;margin-top: 70px;line-height: 120%;">
                                            <strong>4.1	Покращення рівня менеджменту реалізації енергоефективних проектів державними службовцями шести малих міст Закарпаття</strong><br/>
                                            -	Проведено тренінг по енергозбереженню для держслужбовців;<br/>
                                            -	Шість малих міст Закарпаття забезпечені Практичним посібником щодо покращення енергоефективиності.
                                            </p>
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
