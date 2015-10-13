<%-- 
    Document   : archive_page
    Created on : Jun 26, 2015, 9:03:07 PM
    Author     : kiwi
--%>

<%@tag description="Carpathian road - Admin page" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="Constants" class="ua.aits.crc.functions.Constants" scope="session"/>
<c:if test="${sessionScope.user == null && pageContext.request.servletPath.substring(pageContext.request.servletPath.lastIndexOf('/')) != '/Login.jsp'}">
    <style>
        body {
            display:none;
        }
    </style>
    <script>window.location.href = "${Constants.URL}system/login";</script>
</c:if>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="${Constants.URL}images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <title>Carpathian road - Admin page</title>
    <link href="${Constants.URL}css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="${Constants.URL}css/admin.css" rel="stylesheet">
    <link href="${Constants.URL}css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${Constants.URL}css/plugins/dropzone.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
    <link href="${Constants.URL}css/bootstrap/bootstrap-switch.css" rel="stylesheet" />
</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${Constants.URL}system/index"> 
                    <img src="${Constants.URL}images/icon.png"> <span>Carpathian road</span>
                </a>
            </div>
            <!-- Top Menu Items -->
            <c:if test="${sessionScope.user != null}">
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">${sessionScope.user}</a>
                </li>
            </ul>
            </c:if>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                            <li num="1" id="energy">
                                <a href="${Constants.URL}system/index/1"><i class="menu-icons"><img src="${Constants.URL}images/icon-energy.png" /></i> <span>Energy</span></a>
                            </li>
                            <li num="2" id="ecology">
                                <a href="${Constants.URL}system/index/2"><i class="menu-icons"><img src="${Constants.URL}images/icon-ecology.png" /></i> Ecology</a>
                            </li>
                            <li num="3" id="tourism">
                                <a href="${Constants.URL}system/index/3"><i class="menu-icons"><img src="${Constants.URL}images/icon-tourism.png" /></i> Tourism</a>
                            </li>
                            <li num="4" id="soc-projects">
                                <a href="${Constants.URL}system/index/4"><i class="menu-icons"><img src="${Constants.URL}images/icon-soc-projects.png" /></i> Soc-projects</a>
                            </li>
                            <li id="logout">
                                <a href="<c:url value="/system/do/logout"/>"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                            </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">
                <jsp:doBody/>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
            
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
    <script src="${Constants.URL}js/bootstrap/bootstrap.min.js"></script>
    <script src="${Constants.URL}js/bootstrap/bootstrap-select.js"></script>
    <script src="${Constants.URL}js/bootstrap/bootstrap-switch.js"></script>
    <script src="${Constants.URL}js/plugins/dropzone.js"></script>
    <script>
        $(document).ready(function () {
            if('${Constants.URL}' === '/') {
                var url = window.location.href.split('/')[5];
            }
            else {
                var url = window.location.href.split('/')[6];
            }
            if(url === '') {
                $("li[num='1']").addClass('active');
            }
            else {
                $("li[num='"+url+"']").addClass('active');
            }
        });
    </script>
</body>

</html>
