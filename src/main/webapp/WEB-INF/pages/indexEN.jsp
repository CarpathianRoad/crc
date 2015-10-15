<%-- 
    Document   : indexEN
    Created on : Oct 12, 2015, 12:27:56 AM
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
    <body class="en">
        <header id="head-item" role="banner">
            <div class="sub-header">
				<div class="menu-block">
					<div class="closed-menu">
						<span class="menu-text">Menu</span>
						<img class="menu-button" src="${Constants.URL}images/menu-icon.png" />
					</div>
					<div class="menu-opened">
						<ul class="language-block">
                                                    <li><a href="${Constants.URL}ua/index">UA</a></li>
                                                    <li class="active"><a href="${Constants.URL}en/index">EN</a></li>
						</ul>
						<nav role="navigation" id="nav-main">
							<ul class="navbar">
								<li style="display:none;" class="cyan" id="head-item-menu-item"><a href="#head-item">Head</a></li>
								<li class="cyan" id="energy-menu-item"><a href="#energy">Energy saving</a></li>
								<li class="green" id="ecology-menu-item"><a href="#ecology">Ecology</a></li>
								<li class="dark-green" id="tourism-menu-item"><a href="#tourism">Tourism</a></li>
								<li class="blue" id="soc-projects-menu-item"><a href="#soc-projects">Social projects</a></li>
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
					<h4>Energy saving</h4>
				</div>
                                <c:choose>
                                    <c:when test="${energy == '' || energy == null || empty energy}">
                                    <div class="side-block left-block">
					<div class="text-block">
                                            <span class="descr-text">
                                                We implement projects in the sphere of energy saving of socially important facilities, introduction of innovative energy efficiency technologies. A successful example of realizing such initiatives is the project “Through energy inspiring future generations” on introduction of new technologies for energy saving in the kindergarten.
                                            </span>
						<a href="${Constants.URL}en/tenerife" class="descr-button">Read more</a>
					</div>
                                    </div>
                                    <div class="side-block right-block">
                                            <div class="image-block">
                                                <a href="${Constants.URL}en/tenerife"><img class="grow" src="${Constants.URL}images/bg-energy.png"/></a>
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
                                                            We implement projects in the sphere of energy saving of socially important facilities, introduction of innovative energy efficiency technologies. A successful example of realizing such initiatives is the project “Through energy inspiring future generations” on introduction of new technologies for energy saving in the kindergarten.
                                                        </span>
                                                            <a href="${Constants.URL}en/tenerife" class="descr-button">Read more</a>
                                                    </div>
                                                </div>
                                                <div class="side-block right-block">
                                                        <div class="image-block">
                                                            <a href="${Constants.URL}en/tenerife"><img class="grow" src="${Constants.URL}images/bg-energy.png"/></a>
                                                        </div>
                                                </div>  
                                            </li>
                                            <c:forEach items="${energy}" var="project">
                                            <li class="slide">
                                                <div class="side-block left-block">
                                                    <div class="text-block">
                                                        <span class="descr-text">
                                                        <h4>${project.project_name_en}</h4> <br/>
                                                        ${project.project_text_en}
                                                        </span>
                                                            <a class="descr-button" href="${Constants.URL}en/project/${project.project_id}">Read more</a>
                                                    </div>
                                                </div>
                                                <div class="side-block right-block">
                                                        <div class="image-block">
                                                                <img class="grow" src="${Constants.URL}files/avatars/${project.project_avatar}"/>
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
			<div class="main-block" va="${ecology}">
				<div class="main-header-block">
					<img src="${Constants.URL}images/icon-ecology.png" />
					<h4>Ecology</h4>
				</div>
                                <c:choose>
                                    <c:when test="${ecology == '' || ecology == null || empty ecology}">
                                    <div class="side-block right-block">
                                            <div class="text-block">
                                                    <span class="descr-text">
                                                    We support initiatives of local communities that help to reduce waste pollution, save energy resources and environment. We help to attract potential investors and ensure cooperation of local communities with local authorities in solving environmental problems of the territories.
                                                    </span>
                                            </div>
                                    </div>
                                    <div class="side-block left-block">
                                            <div class="image-block">
                                                    <img class="grow" src="${Constants.URL}images/bg-ecology.png"/>
                                            </div>
                                    </div>
                                    </c:when>
                                    <c:otherwise>
                                    <div class="slidewrap" data-autorotate="5000">
                                        <ul class="slidecontrols">
                                            <li><a href="#sliderName1" class="prev"><div class="portfolio-left-arrow"></div></a></li>
                                            <li><a href="#sliderName1" class="next"><div class="portfolio-right-arrow"></div></a></li>
                                        </ul>
                                        <ul class="slider" id="sliderName1">
                                            <li class="slide">
                                                <div class="side-block right-block">
                                                    <div class="text-block">
                                                            <span class="descr-text">
                                                            We support initiatives of local communities that help to reduce waste pollution, save energy resources and environment. We help to attract potential investors and ensure cooperation of local communities with local authorities in solving environmental problems of the territories.
                                                            </span>
                                                    </div>
                                                </div>
                                                <div class="side-block left-block">
                                                        <div class="image-block">
                                                                <img class="grow" src="${Constants.URL}images/bg-ecology.png"/>
                                                        </div>
                                                </div>
                                            </li>
                                            <c:forEach items="${ecology}" var="project">
                                            <li class="slide">
                                                <div class="side-block right-block">
                                                    <div class="text-block">
                                                            <span class="descr-text">
                                                            <h4>${project.project_name_en}</h4> <br/>
                                                            ${project.project_text_en}
                                                            </span>
                                                            <a class="descr-button" href="${Constants.URL}en/project/${project.project_id}">Read more</a>
                                                    </div>
                                                </div>
                                                <div class="side-block left-block">
                                                        <div class="image-block">
                                                                <img class="grow" src="${Constants.URL}files/avatars/${project.project_avatar}"/>
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
					<h4>Tourism</h4>
				</div>
                                <c:choose>
                                    <c:when test="${tourism == '' || tourism == null || empty tourism}">
                                    <div class="side-block left-block">
                                            <div class="text-block">
                                                    <span class="descr-text">
                                                    We are open for cooperation with active tourist actors and local authorities for implementation of useful initiatives and projects in tourism sphere that has a great potential to become a priority industry for regional development.
                                                    </span>
                                                <a href="http://www.carpathianroad.com/en/map" target="_blank" class="descr-button">Read more</a>
                                            </div>
                                    </div>
                                    <div class="side-block right-block">
                                            <div class="image-block">
                                                    <a href="http://www.carpathianroad.com/en/map" target="_blank"><img class="grow" src="${Constants.URL}images/bg-tourism.png"/></a>
                                            </div>
                                    </div>
                                    </c:when>
                                    <c:otherwise>
                                    <div class="slidewrap" data-autorotate="5000">
                                        <ul class="slidecontrols">
                                            <li><a href="#sliderName2" class="prev"><div class="portfolio-left-arrow"></div></a></li>
                                            <li><a href="#sliderName2" class="next"><div class="portfolio-right-arrow"></div></a></li>
                                        </ul>
                                        <ul class="slider" id="sliderName2">
                                            <li class="slide">
                                                <div class="side-block left-block">
                                                        <div class="text-block">
                                                                <span class="descr-text">
                                                                We are open for cooperation with active tourist actors and local authorities for implementation of useful initiatives and projects in tourism sphere that has a great potential to become a priority industry for regional development.
                                                                </span>
                                                            <a href="http://www.carpathianroad.com/en/map" target="_blank" class="descr-button">Read more</a>
                                                        </div>
                                                </div>
                                                <div class="side-block right-block">
                                                        <div class="image-block">
                                                                <a href="http://www.carpathianroad.com/en/map" target="_blank"><img class="grow" src="${Constants.URL}images/bg-tourism.png"/></a>
                                                        </div>
                                                </div>
                                            </li>
                                            <c:forEach items="${tourism}" var="project">
                                            <li class="slide">
                                                <div class="side-block left-block">
                                                        <div class="text-block">
                                                                <span class="descr-text">
                                                                <h4>${project.project_name_en}</h4> <br/>
                                                                ${project.project_text_en}
                                                                </span>
                                                                <a class="descr-button" href="${Constants.URL}en/project/${project.project_id}">Read more</a>
                                                        </div>
                                                </div>
                                                <div class="side-block right-block">
                                                        <div class="image-block">
                                                                <img class="grow" src="${Constants.URL}files/avatars/${project.project_avatar}"/>
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
					<h4>Social projects</h4>
				</div>
                                <c:choose>
                                    <c:when test="${soc-projects == '' || soc-projects == null || empty soc-projects}">
                                    <div class="side-block right-block">
                                            <div class="text-block">
                                                    <span class="descr-text">
                                                    We believe that people, local communities play a key role in the development of the region. Social work is multifaceted and covers all areas of life. Development of education, medicine, culture- these are areas extremely important, but always limited in funding. We support any noble undertakings and useful initiatives.
                                                    </span>
                                            </div>
                                    </div>
                                    <div class="side-block left-block">
                                            <div class="image-block">
                                                    <img class="grow" src="${Constants.URL}images/bg-soc-projects.png"/>
                                            </div>
                                    </div>
                                    </c:when>
                                    <c:otherwise>
                                    <div class="slidewrap" data-autorotate="5000">
                                        <ul class="slidecontrols">
                                            <li><a href="#sliderName3" class="prev"><div class="portfolio-left-arrow"></div></a></li>
                                            <li><a href="#sliderName3" class="next"><div class="portfolio-right-arrow"></div></a></li>
                                        </ul>
                                        <ul class="slider" id="sliderName3">
                                            <li class="slide">
                                                <div class="side-block right-block">
                                                        <div class="text-block">
                                                                <span class="descr-text">
                                                                We believe that people, local communities play a key role in the development of the region. Social work is multifaceted and covers all areas of life. Development of education, medicine, culture- these are areas extremely important, but always limited in funding. We support any noble undertakings and useful initiatives.
                                                                </span>
                                                        </div>
                                                </div>
                                                <div class="side-block left-block">
                                                        <div class="image-block">
                                                                <img class="grow" src="${Constants.URL}images/bg-soc-projects.png"/>
                                                        </div>
                                                </div>
                                            </li>
                                            <c:forEach items="${soc-projects}" var="project">
                                            <li class="slide">
                                                <div class="side-block right-block">
                                                        <div class="text-block">
                                                                <span class="descr-text">
                                                                <h4>${project.project_name_en}</h4> <br/>
                                                                ${project.project_text_en}
                                                                </span>
                                                                <a class="descr-button" href="${Constants.URL}en/project/${project.project_id}">Read more</a>
                                                        </div>
                                                </div>
                                                <div class="side-block left-block">
                                                        <div class="image-block">
                                                                <img class="grow" src="${Constants.URL}files/avatars/${project.project_avatar}"/>
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
                                    Among the objectives of NGO “Crossroad connections” are the following:
				</div> 
						
					<p>
					-  Contributing to practical implementation of national, regional, local and international programmes directed to improvement of social and economic situation of the region, implementation of interesting, innovative and socially important projects.
					</p>	
					<p>
					-  Contributing to establishing of partnerships of local organizations and partnerships with organizations from other countries directed to the support of cross-border and transnational cooperation aimed at using of new possibilities provided by the European Union.
                                        </p>	
					<p>
					-  Improving of the level of knowledge and practical skills of local organizations in the sphere of cooperation with international organizations.
                                        </p>	
				</div>	
				</div>
				<div id="mail-block" class="side-block right-block">
						<h5>Contacts</h5>
					<div class="text-block-contacts">
						<p>
						Adress: <br/>
						88015, Ukraine, Transcarpathian region., <br/>
                                                Uzhgorod, st. Bohomoltsia 21 (5 fl.)
						</p>
						<p>
						Contact person: <br/>
                                                Zaharkevych Tatiana <br/>
                                                Deputy Chairman of the NGO
						</p>
						<p>
						Phone: + 38 (0312) 42 99 95  <br/>
						E-mail: office@crc.org.ua
						</p>
						<a class="contact-button mail-us">Send message</a>
					</div>
				</div>
				<div id="mail-form" class="side-block right-block">
					<div id="form-main">
						<div id="form-div">
							<form class="form" id="form1">
							<p class="name">
								<label>Name</label>
								<input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" id="name" />
							</p>
							<p class="email">
								<label>E-mail</label>
								<input name="email" type="text" class="validate[required,custom[email]] feedback-input" id="email" />
							</p>
							<p class="text">
								<label>Message</label>
								<textarea name="text" class="validate[required,length[6,300]] feedback-input" id="comment"></textarea>
							</p>
							<div class="submit">
								<input type="button" value="Send" id="button-blue"/>
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
							Your letter went to our mailbox, thanks. <br/>
                                                        Please wait.<br/>
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


