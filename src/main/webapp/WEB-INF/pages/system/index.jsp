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
                           Projects in category Energy
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
                                    	<th style="width:3%;"></th>
                                	</tr>
                            	</thead>
                            	<tbody>
                                	<c:if test="${empty articles}">
                                    	<tr>
                                        	<td colspan="6">No articles in this category...</td>
                                    	</tr>
                                	</c:if>
                                	<c:set var="count" value="1" scope="page" />
                                	<c:forEach items="${articles}" var="item">
                                    	<c:choose>
                                        	<c:when test="${sessionScope.user.user_role == 0}">
                                            	<c:if test="${item.article_is_delete == 0}">
                                                	<tr class="table-item" author="${item.article_author}" editor="${item.article_editor}" publish="${item.article_is_publish}" add-date="${item.article_add_date}" edit-date="${item.article_edit_date}">
                                                    	<td class="text-center counter">${count}</td>
                                                    	<td <c:if test="${item.article_author != item.article_editor}">style="color:#576A90"</c:if>>
                                                        	${item.article_title_en}
                                                    	</td>
                                                    	<td class="text-center">${item.article_lang}</td>
                                                    	<td class="text-center">${item.article_image_size}</td>
                                                    	<td class="text-center">${item.article_file_size}</td>
                                                    	<td class="text-center">${item.article_add_date}</td>
                                                    	<td class="text-center">${item.article_edit_date}</td>
                                                    	<td class="text-center">${item.article_author}</td>
                                                    	<td class="text-center">${item.article_editor}</td>
                                                    	<td class="text-center">
                                                        	<c:if test="${item.article_is_publish == 1}">
                                                            	<i class="fa fa-fw fa-check-circle"></i>
                                                        	</c:if>
                                                    	</td>
                                                    	<td class="text-center"><a href="<c:url value="/system/archive/edit/${item.article_id}"/>"><img class="article-buttons" src="${Constants.URL}img/edit.png" /></a></td>
                                                    	<td class="text-center"><a href="<c:url value="/system/archive/delete/${item.article_id}"/>"><img class="article-buttons" src="${Constants.URL}img/delete.png" /></a></td>
                                                   	 
                                                	</tr>
                                            	</c:if>
                                        	</c:when>    
                                        	<c:otherwise>
                                                	<tr class="table-item" author="${item.article_author}" editor="${item.article_editor}" publish="${item.article_is_publish}" add-date="${item.article_add_date}" edit-date="${item.article_edit_date}">
                                                    	<td class="text-center counter">${count}</td>
                                                    	<c:choose>
                                                        	<c:when test="${item.article_is_delete == 1}">
                                                            	<td style="color:#A39595">${item.article_title_en}</td>
                                                        	</c:when>
                                                        	<c:otherwise>
                                                        	<td <c:if test="${item.article_author != item.article_editor}">style="color:#576A90"</c:if>>
                                                            	${item.article_title_en}
                                                        	</td>
                                                        	</c:otherwise>
                                                    	</c:choose>
                                                    	<td class="text-center">${item.article_lang}</td>
                                                    	<td class="text-center">${item.article_image_size}</td>
                                                    	<td class="text-center">${item.article_file_size}</td>
                                                    	<td class="text-center">${item.article_add_date}</td>
                                                    	<td class="text-center">${item.article_edit_date}</td>
                                                    	<td class="text-center">${item.article_author}</td>
                                                    	<td class="text-center">${item.article_editor}</td>
                                                    	<td class="text-center">
                                                        	<c:if test="${item.article_is_publish == 1}">
                                                            	<i class="fa fa-fw fa-check-circle"></i>
                                                        	</c:if>
                                                    	</td>
                                                    	<td class="text-center"><a href="<c:url value="/system/archive/edit/${item.article_id}"/>"><img class="article-buttons" src="${Constants.URL}img/edit.png" /></a></td>
                                                    	<c:choose>
                                                        	<c:when test="${item.article_is_delete == 1}">
                                                       	 
                                                    	<td class="text-center"><a href="<c:url value="/system/archive/do/undeletearticle/${item.article_id}"/>"><img class="article-buttons" src="${Constants.URL}img/undelete.png" /></a></td>
                                                        	</c:when>
                                                        	<c:otherwise>
                                                       	 
                                                    	<td class="text-center"><a href="<c:url value="/system/archive/delete/${item.article_id}"/>"><img class="article-buttons" src="${Constants.URL}img/delete.png" /></a></td>
                                                        	</c:otherwise>
                                                    	</c:choose>
                                                    	<c:if test="${sessionScope.user.user_role == 1}">

                                                    	<td class="text-center"><button class="btn btn-success btn-xs" id="publishData" type="submit"><a href="<c:url value="/system/archive/publish/${item.article_id}"/>">Publish</a></button></td>
                                                    	</c:if>
                                                	</tr>
                                        	</c:otherwise>
                                    	</c:choose>
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
