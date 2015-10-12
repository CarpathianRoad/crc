<%-- 
    Document   : index
    Created on : Oct 7, 2015, 12:28:37 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:adminpage>
    <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                           Projects in category ${cat_name}
                        </h1>
                    </div>
                </div>

                <div class="row">
                	<div class="col-lg-12">
                    	<div class="table-responsive">
                        	<div class="add-button-panel"><button class="btn btn-success btn-mini" id="sudmitData" type="submit"><a href="<c:url value="/system/add/"/>${category}">+ Add project</a></button></div>
                        	
                        	<table class="article-table table table-bordered table-hover table-striped">
                            	<thead>
                                	<tr>
                                    	<th class="text-center" style="width:3%">#</th>
                                    	<th style="width:40%">Title</th>
                                    	<th class="text-center" style="width:10%">Lang</th>
                                    	<th style="width:3%;"></th>
                                    	<th style="width:3%;"></th>
                                	</tr>
                            	</thead>
                            	<tbody>
                                	<c:if test="${empty projects}">
                                    	<tr><td colspan="6">No articles in this category...</td></tr>
                                	</c:if>
                                	<c:set var="count" value="1" scope="page" />
                                	<c:forEach items="${projects}" var="item">
                                            <tr class="table-item">
                                                <td class="text-center counter">${count}</td>
                                                <td>${item.project_name_ua}</td>
                                                <td class="text-center">${item.project_lang}</td>
                                                <td class="text-center"><a href="<c:url value="/system/edit/${item.project_id}"/>"><img class="article-buttons" src="${Constants.URL}images/edit.png" /></a></td>
                                                <td class="text-center"><a href="<c:url value="/system/delete/${item.project_id}"/>"><img class="article-buttons" src="${Constants.URL}images/delete.png" /></a></td>
                                            </tr>
                                    	<c:set var="count" value="${count + 1}" scope="page"/>
                                	</c:forEach>
                            	</tbody>
                        	</table>
                    	</div>
                	</div>
            	</div>
</t:adminpage>
<script>
</script>
