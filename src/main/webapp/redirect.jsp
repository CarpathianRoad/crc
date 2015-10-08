<%-- 
    Document   : redirect
    Created on : Oct 6, 2015, 11:49:10 AM
    Author     : kiwi
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="Constants" class="ua.aits.crc.functions.Constants" scope="session"/>
<%
    String redirectURL = Constants.URL+"index";
    response.sendRedirect(redirectURL);
%>
