<%-- 
    Document   : delete
    Created on : Oct 7, 2015, 12:29:37 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<t:adminpage>
    <div class="margintop20">
        <h4>Delete project in category "${cat_name}"</h4>
        <ol class="breadcrumb">
            <li class="active">
                <a href="${Constants.URL}system/index/${project.project_category}"> <i class="fa fa-fw fa-list-alt"></i> Back to category "${cat_name}"</a>
            </li>
        </ol>
	<div class="row add-row">
                <div class="col-lg-12 margintop30">
                    <div class="delete-row">Delete project <strong>"${project.project_name_en}"</strong> ?</div>
                    <p>
                        <a href="${Constants.URL}system/do/deleteproject/${project.project_id}"><button class="btn btn-success margintop30 marginbottom30" id="sudmitDelete" type="submit">Delete project</button></a>
                        <a href="${Constants.URL}system/index/${project.project_category}"><button class="btn btn-danger margintop30 marginbottom30" id="sudmitData" type="submit">Back to category</button></a>
                    </p>
                </div>
        </div>
    </div>
</t:adminpage>
