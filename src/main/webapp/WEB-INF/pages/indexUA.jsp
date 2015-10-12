<%-- 
    Document   : indexUA
    Created on : Oct 6, 2015, 11:48:30 AM
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
    <body class="en">
        <header id="head-item" role="banner">
            <div class="sub-header">
				<div class="menu-block">
					<div class="closed-menu">
						<span class="menu-text">Меню</span>
						<img class="menu-button" src="${Constants.URL}images/menu-icon.png" />
					</div>
					<div class="menu-opened">
						<ul class="language-block">
                                                    <li class="active"><a href="${Constants.URL}ua/index">UA</a></li>
                                                    <li><a href="${Constants.URL}en/index">EN</a></li>
						</ul>
						<nav role="navigation" id="nav-main">
							<ul class="navbar">
								<li style="display:none;" class="cyan" id="head-item-menu-item"><a href="#head-item">Head</a></li>
								<li class="cyan" id="energy-menu-item"><a href="#energy">Енергозбереження</a></li>
								<li class="green" id="ecology-menu-item"><a href="#ecology">Екологія</a></li>
								<li class="dark-green" id="tourism-menu-item"><a href="#tourism">Туризм</a></li>
								<li class="blue" id="soc-projects-menu-item"><a href="#soc-projects">Соцпроекти</a></li>
								<li id="contacts-menu-item"><a href="#contacts">Контакти</a></li>
							</ul>
						</nav>
					</div>
				</div>
                <div class="logo-block">
                    <a class="brand"><img src="${Constants.URL}images/main-logo.png" /></a>
                </div>
            </div>
	</header>
	<a class="nav-arrow smooth-link" href="#energy"><img src="${Constants.URL}images/arrow.png" /></a>
	<main role="main">
		<section id="energy">
			<div class="main-block">
				<div class="main-header-block">
					<img src="${Constants.URL}images/icon-energy.png" />
					<h4>Енергозбереження</h4>
				</div>
                                <c:choose>
                                    <c:when test="${energy == '' || energy == null || empty energy}">
                                    <div class="side-block left-block">
                                            <div class="text-block">
                                                    <span class="descr-text">Ми реалізуємо проекти в галузі енергозбереження суспільно-значущих об’єктів, впровадження інноваційних технологій енергоефективності.
                                                            Успішним прикладом виконання таких ініціатив є проект «Через енергію надихаємо наступні покоління» по впровадженню нових технологій з енергозбереження в дитячому садочку. 
                                                    </span>
                                                    <a href="${Constants.URL}ua/tenerife" target="_blank" class="descr-button">Детальніше</a>
                                            </div>
                                    </div>
                                    <div class="side-block right-block">
                                            <div class="image-block">
                                                    <a href="${Constants.URL}ua/tenerife" target="_blank"><img src="${Constants.URL}images/bg-energy.png"/></a>
                                            </div>
                                    </div>  
                                    </c:when>
                                    <c:otherwise>
                                    <div class="slidewrap" data-autorotate="5000">
                                        <ul class="slidecontrols">
                                            <li><a href="#sliderName" class="prev"><div class="portfolio-left-arrow"></div></a></li>
                                            <li><a href="#sliderName" class="next"><div class="portfolio-right-arrow"></div></a></li>
                                        </ul>
                                        <ul class="slider" id="sliderName">
                                            <li class="slide">
                                                <div class="side-block left-block">
                                                        <div class="text-block">
                                                                <span class="descr-text">Ми реалізуємо проекти в галузі енергозбереження суспільно-значущих об’єктів, впровадження інноваційних технологій енергоефективності.
                                                                        Успішним прикладом виконання таких ініціатив є проект «Через енергію надихаємо наступні покоління» по впровадженню нових технологій з енергозбереження в дитячому садочку. 
                                                                </span>
                                                                <a href="${Constants.URL}ua/tenerife" target="_blank" class="descr-button">Детальніше</a>
                                                        </div>
                                                </div>
                                                <div class="side-block right-block">
                                                        <div class="image-block">
                                                            <a href="${Constants.URL}ua/tenerife" target="_blank"><img src="${Constants.URL}images/bg-energy.png"/></a>
                                                        </div>
                                                </div>
                                            </li>
                                            <c:forEach items="${energy}" var="project">
                                            <li class="slide">
                                                <div class="side-block left-block">
                                                    <div class="text-block">
                                                        <span class="descr-text">
                                                        <h4>${project.project_name_ua}</h4> <br/>
                                                        ${project.project_text_ua}
                                                        </span>
                                                            <a class="descr-button" href="${Constants.URL}ua/project/${project.project_id}">Детальніше</a>
                                                    </div>
                                                </div>
                                                <div class="side-block right-block">
                                                        <div class="image-block">
                                                                <img src="${Constants.URL}files/avatars/${project.project_avatar}"/>
                                                        </div>
                                                </div>  
                                            </li>    
                                            </c:forEach>
                                            
                                        </ul>
                                    </div>    
                                    </c:otherwise>
                                </c:choose>
			</div>
		</section>
		<section id="ecology">
			<div class="main-block">
				<div class="main-header-block">
					<img src="${Constants.URL}images/icon-ecology.png" />
					<h4>Екологія</h4>
				</div>
                                <c:choose>
                                    <c:when test="${ecology == '' || ecology == null || empty ecology}">
                                        <div class="side-block right-block">
                                                <div class="text-block">
                                                        <span class="descr-text">
                                                        Ми підтримуємо  ініціативи місцевих  громад, що допомагають зменшити забруднення відходами, зберегти енергоресурси й довкілля. Ми допомагаємо в залученні  потенційних інвесторів та забезпеченні  співпраці громади з органами місцевої влади у вирішенні екологічних проблем територій.
                                                        </span>
                                                </div>
                                        </div>
                                        <div class="side-block left-block">
                                                <div class="image-block">
                                                        <img src="${Constants.URL}images/bg-ecology.png"/>
                                                </div>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                    <div class="slidewrap" data-autorotate="5000">
                                        <ul class="slidecontrols">
                                            <li><a href="#sliderName" class="prev"><div class="portfolio-left-arrow"></div></a></li>
                                            <li><a href="#sliderName" class="next"><div class="portfolio-right-arrow"></div></a></li>
                                        </ul>
                                        <ul class="slider" id="sliderName">
                                            <li class="slide">
                                                <div class="side-block right-block">
                                                        <div class="text-block">
                                                                <span class="descr-text">
                                                                Ми підтримуємо  ініціативи місцевих  громад, що допомагають зменшити забруднення відходами, зберегти енергоресурси й довкілля. Ми допомагаємо в залученні  потенційних інвесторів та забезпеченні  співпраці громади з органами місцевої влади у вирішенні екологічних проблем територій.
                                                                </span>
                                                        </div>
                                                </div>
                                                <div class="side-block left-block">
                                                        <div class="image-block">
                                                                <img src="${Constants.URL}images/bg-ecology.png"/>
                                                        </div>
                                                </div>
                                            </li>
                                            <c:forEach items="${ecology}" var="project">
                                            <li class="slide">
                                                <div class="side-block right-block">
                                                    <div class="text-block">
                                                            <span class="descr-text">
                                                            <h4>${project.project_name_ua}</h4> <br/>
                                                            ${project.project_text_ua}
                                                            </span>
                                                            <a class="descr-button" href="${Constants.URL}ua/project/${project.project_id}">Детальніше</a>
                                                    </div>
                                                </div>
                                                <div class="side-block left-block">
                                                        <div class="image-block">
                                                                <img src="${Constants.URL}files/avatars/${project.project_avatar}"/>
                                                        </div>
                                                </div>
                                            </li>    
                                            </c:forEach>
                                            
                                        </ul>
                                    </div>    
                                    </c:otherwise>
                                </c:choose>
			</div>
		</section>
		<section id="tourism">
			<div class="main-block">
				<div class="main-header-block">
					<img src="${Constants.URL}images/icon-tourism.png" />
					<h4>Туризм</h4>
				</div>
                                <c:choose>
                                    <c:when test="${tourism == '' || tourism == null || empty tourism}">
                                        <div class="side-block left-block">
                                                <div class="text-block">
                                                        <span class="descr-text">
                                                        Ми відкриті для співпраці з активними туристичними суб’єктами та органами місцевої влади для реалізації корисних  ініціатив та проектів у сфері туризму, який має значний потенціал, щоб стати пріоритетною галуззю для розвитку регіону.
                                                        </span>
                                                    <a href="http://www.carpathianroad.com/ua/map" target="_blank" class="descr-button">Детальніше</a>
                                                </div>
                                        </div>
                                        <div class="side-block right-block">
                                                <div class="image-block">
                                                        <a href="http://www.carpathianroad.com/ua/map" target="_blank"><img src="${Constants.URL}images/bg-tourism.png"/></a>
                                                </div>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                    <div class="slidewrap" data-autorotate="5000">
                                        <ul class="slidecontrols">
                                            <li><a href="#sliderName" class="prev"><div class="portfolio-left-arrow"></div></a></li>
                                            <li><a href="#sliderName" class="next"><div class="portfolio-right-arrow"></div></a></li>
                                        </ul>
                                        <ul class="slider" id="sliderName">
                                            <li class="slide">
                                                <div class="side-block left-block">
                                                        <div class="text-block">
                                                                <span class="descr-text">
                                                                Ми відкриті для співпраці з активними туристичними суб’єктами та органами місцевої влади для реалізації корисних  ініціатив та проектів у сфері туризму, який має значний потенціал, щоб стати пріоритетною галуззю для розвитку регіону.
                                                                </span>
                                                            <a href="http://www.carpathianroad.com/ua/map" target="_blank" class="descr-button">Детальніше</a>
                                                        </div>
                                                </div>
                                                <div class="side-block right-block">
                                                        <div class="image-block">
                                                                <a href="http://www.carpathianroad.com/ua/map" target="_blank"><img src="${Constants.URL}images/bg-tourism.png"/></a>
                                                        </div>
                                                </div>
                                            </li>
                                            <c:forEach items="${tourism}" var="project">
                                            <li class="slide">
                                                <div class="side-block left-block">
                                                        <div class="text-block">
                                                                <span class="descr-text">
                                                                <h4>${project.project_name_ua}</h4> <br/>
                                                                ${project.project_text_ua}
                                                                </span>
                                                                <a class="descr-button" href="${Constants.URL}ua/project/${project.project_id}">Детальніше</a>
                                                        </div>
                                                </div>
                                                <div class="side-block right-block">
                                                        <div class="image-block">
                                                                <img src="${Constants.URL}files/avatars/${project.project_avatar}"/>
                                                        </div>
                                                </div>
                                            </li>    
                                            </c:forEach>
                                        </ul>
                                    </div>    
                                    </c:otherwise>
                                </c:choose>
			</div>
		</section>
		<section id="soc-projects">
			<div class="main-block">
				<div class="main-header-block">
					<img src="${Constants.URL}images/icon-soc-projects.png" />
					<h4>Соцпроекти</h4>
				</div>
                                        
                                <c:choose>
                                    <c:when test="${soc-projects == '' || soc-projects == null || empty soc-projects}">
                                        <div class="side-block right-block">
                                                <div class="text-block">
                                                        <span class="descr-text">
                                                        Ми віримо, що люди, місцеві громади відіграють ключову роль в розвитку регіону. Соціальна робота є багатогранною та охоплює усі сфери життя. Розвиток освіти, медицини, культури,– сфери надзвичайно важливі, але завжди обмежені в фінансуванні. Ми підтримуємо будь-які шляхетні започаткування та корисні ініціативи.
                                                        </span>
                                                </div>
                                        </div>
                                        <div class="side-block left-block">
                                                <div class="image-block">
                                                        <img src="${Constants.URL}images/bg-soc-projects.png"/>
                                                </div>
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                    <div class="slidewrap" data-autorotate="5000">
                                        <ul class="slidecontrols">
                                            <li><a href="#sliderName" class="prev"><div class="portfolio-left-arrow"></div></a></li>
                                            <li><a href="#sliderName" class="next"><div class="portfolio-right-arrow"></div></a></li>
                                        </ul>
                                        <ul class="slider" id="sliderName">
                                            <li class="slide">
                                                <div class="side-block right-block">
                                                        <div class="text-block">
                                                                <span class="descr-text">
                                                                Ми віримо, що люди, місцеві громади відіграють ключову роль в розвитку регіону. Соціальна робота є багатогранною та охоплює усі сфери життя. Розвиток освіти, медицини, культури,– сфери надзвичайно важливі, але завжди обмежені в фінансуванні. Ми підтримуємо будь-які шляхетні започаткування та корисні ініціативи.
                                                                </span>
                                                        </div>
                                                </div>
                                                <div class="side-block left-block">
                                                        <div class="image-block">
                                                                <img src="${Constants.URL}images/bg-soc-projects.png"/>
                                                        </div>
                                                </div>
                                            </li>
                                            <c:forEach items="${soc-projects}" var="project">
                                            <li class="slide">
                                                <div class="side-block right-block">
                                                        <div class="text-block">
                                                                <span class="descr-text">
                                                                <h4>${project.project_name_ua}</h4> <br/>
                                                                ${project.project_text_ua}
                                                                </span>
                                                                <a class="descr-button" href="${Constants.URL}ua/project/${project.project_id}">Детальніше</a>
                                                        </div>
                                                </div>
                                                <div class="side-block left-block">
                                                        <div class="image-block">
                                                                <img src="${Constants.URL}files/avatars/${project.project_avatar}"/>
                                                        </div>
                                                </div>
                                            </li>    
                                            </c:forEach>
                                            
                                        </ul>
                                    </div>    
                                    </c:otherwise>
                                </c:choose>
			</div>
		</section>
		<section id="contacts">
			<div class="main-block">
				<div class="side-block left-block">
				<div class="text-block-contacts">
				<div class="contacts-title">
                                    <span>ГО  "Перехресні зв’язки"</span> cтворена для:
				</div> 
						
					<p>
					-  Сприяння практичному здійсненню загальнодержавних, регіональних, місцевих та міжнародних програм, спрямованих на покращення соціально-економічного становища регіону, 
                                            реалізації цікавих, інноваційних та суспільно-значущих проектів.
					</p>	
					<p>
					-  Сприяння залагодженню партнерств місцевих організацій, та налагодження партнерств з організаціями з інших країн направлених на підтримку транскордонної та транснаціональної співпраці.
					</p>	
					<p>
					-  Збір і розповсюдження інформації про найкращий досвід ЄС у розробці і реалізації стратегій (програм) соціально-економічної політики, регіонального, місцевого розвитку та реалізації транскордонних проектів.
                                        </p>	
                                        
				</div>	
				</div>
				<div id="mail-block" class="side-block right-block">
						<h5>Контактні дані</h5>
					<div class="text-block-contacts">
						<p>
						Адреса: <br/>
						88015, Україна, Закарпатська обл., <br/>
						м.Ужгород, вул. Богомольця 21 (5 пов.)
						</p>
						<p>
						Контактна особа: <br/>
						Захаркевич Тетяна <br/>
						Заступник Голови ГО
						</p>
						<p>
						Тел.: + 38 (0312) 42 999 95  <br/>
						E-mail: office@crc.org.ua
						</p>
						<a class="contact-button mail-us">Надіслати листа</a>
					</div>
				</div>
				<div id="mail-form" class="side-block right-block">
					<div id="form-main">
						<div id="form-div">
							<form class="form" id="form1">
							<p class="name">
								<label>Ім'я</label>
								<input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" id="name" />
							</p>
							<p class="email">
								<label>E-mail</label>
								<input name="email" type="text" class="validate[required,custom[email]] feedback-input" id="email" />
							</p>
							<p class="text">
								<label>Повідомлення</label>
								<textarea name="text" class="validate[required,length[6,300]] feedback-input" id="comment"></textarea>
							</p>
							<div class="submit">
								<input type="button" value="Надіслати" id="button-blue"/>
								<span class="validation"></span>
							</div>
							</form>
						</div>
					</div>
				</div>
				<div id="mail-loading" class="side-block right-block">
					<div class="text-block-contacts-loading">
						<div class="main-text-block">
							<img class="loading-gif" src="${Constants.URL}images/loading-x.gif" />
						</div>
					</div>
				</div>
				<div id="mail-complete" class="side-block right-block">
					<div class="text-block-contacts-loading">
						<div class="main-text-block">
							Ваш лист відправлено. <br/>
							Зачекайте хвилинку.<br/>
							<img class="loading-gif" src="${Constants.URL}images/loading-x.gif" />
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<footer role="contentinfo">
            <div>
                Developed by <a href="http://www.aits.ua/" target="_blank"><span class="reserved"> AITS</span></a>
                <a class="enter-link" href="${Constants.URL}system/login"><img src="${Constants.URL}images/enter-icon.png"/></a>
            </div>
	</footer>
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
	<script src="${Constants.URL}js/plugins/plugin.js"></script>
	<script src="${Constants.URL}js/main.js"></script>
    </body>
</html>

