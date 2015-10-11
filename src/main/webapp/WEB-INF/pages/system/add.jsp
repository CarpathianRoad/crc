<%-- 
    Document   : add
    Created on : Oct 7, 2015, 12:29:06 PM
    Author     : kiwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<t:adminpage>
    <link rel="stylesheet" href="${Constants.URL}css/plugins/ckeditor.css" type="text/css" />  
        
    <script src="${Constants.URL}js/ckeditor/ckeditor.js"></script>
    <div class="margintop20">
        <h4>Add project to category "${cat_name}"</h4>
        <ol class="breadcrumb">
            <li class="active">
                <a href="#" data-toggle="modal" data-target="#shureModal"> <i class="fa fa-fw fa-list-alt"></i> Back to category "${cat_name}"</a>
            </li>
        </ol>
	<form action="${Constants.URL}system//do/insertdata" name="addArticleForm" id="addForm" method="POST" type="multipart/form-data">
            <input type="hidden" class="form-control" name="category" value="${category}">
            <input type="hidden" name="dir" id="dir-name" value="${folder}" />
            <input type="hidden" class="form-control" id="avatar_path" name="avatar_path">
            <div class="row add-row">
                <div class="col-lg-12 margintop30 field">
                    <label for="tlt">Project name <span class="red-star">*</span></label>
                    <br/>
                    <div class="btn-group lang-switch-title" role="group" aria-label="...">
                        <button type="button" id="titleEN" class="btn btn-default active">In English</button>
                        <button type="button" id="titleUA" class="btn btn-default">In Ukrainian</button>
                    </div>
                </div>
                <div class="col-lg-6 margintop10 field titles">
                    <input type="text" name="titleEN" class="form-control input-title-lang" lang="titleEN" id="tltEN"  maxlength="55">
                    <input type="text" name="titleUA" class="form-control input-title-lang" lang="titleUA" id="tltUA"  maxlength="55">
                    <div class="validation"></div>
                </div>
            </div>
            <hr>
            <div class="row add-row">
                <div class="col-lg-12 margintop30 field">
                    <label for="tlt">Article text <span class="red-star">*</span></label><br/>
                    <div class="btn-group lang-switch-text" role="group" aria-label="...">
                        <button type="button" id="textEN" class="btn btn-default active">In English</button>
                        <button type="button" id="textUA" class="btn btn-default">In Ukrainian</button>
                    </div>
                </div>
                <div class="col-lg-12 margintop10 field textareas">
                    <div class="ck-data-box" id="CKdata"></div>
                        <div lang="textEN" class="textarea-msg"><textarea name="textEN" id="editorEN" rows="20" cols="80" class="input-block-level"></textarea></div>
                        <div lang="textUA" class="textarea-msg"><textarea name="textUA" id="editorUA" rows="20" cols="80" class="input-block-level"></textarea></div>
                        <div class="validation"></div>
                </div>
            </div>
            <hr>
        </form>
        <div class="row add-row">
            <div class="col-lg-12 margintop30 field">
                <label for="tlt">Project avatar</label><br/>
            </div>
        </div>
        <form action="${Constants.URL}system/do/uploadfile" class="dropzone"  id="my-awesome-dropzone-gal">
            <input type="hidden" name="path" value="/files/avatars/" />
            <input type="file" name="file" style="display:none" />
        </form>
        <p>
            <button class="btn btn-success margintop30 marginbottom30 sudmitData" type="submit">Add article</button>
            <button type="button" class="btn btn-danger btn-mini" data-toggle="modal" data-target="#shureModal">Back to category</button>
        </p>
    </div>
    <div id="shureModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Back to category window</h4>
                </div>
                <div class="modal-body">
                    <p>Save changes?</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success btn-mini sudmitData" type="submit" data-dismiss="modal">Save changes</button>
                    <button class="btn btn-warning btn-mini modal-btn-warning" type="submit" data-dismiss="modal">Cancel</button>
                    <a href="${Constants.URL}system/index/${category}"><button type="button" class="btn btn-danger btn-mini">Back to category</button></a>
                </div>
          </div>
        </div>
    </div>
</t:adminpage>
    
<script src="${Constants.URL}js/plugins/jquery.webkitresize.js"></script>
<script src="${Constants.URL}js/plugins/jquery.mb.browser.min.js"></script>
<script> 
    $(document).ready(function () { 
        $("#my-awesome-dropzone-gal").dropzone({ 
            url: "${Constants.URL}system/do/uploadfile",
            addRemoveLinks: true
        });
        var currentLang = $(".lang-switch-text button.active").attr("id");
        $(".textareas .textarea-msg[lang='"+currentLang+"']").show();
        var currentLangT = $(".lang-switch-title button.active").attr("id");
        $(".input-title-lang[lang='"+currentLangT+"']").show();
        initCKE();
    });
    
    $(".lang-switch-text button").click(function(){
        $(".lang-switch-text button").removeClass("active");
        $(this).addClass("active");
        var currentLang = $(this).attr("id");
        $(".textareas .textarea-msg").hide();
        $(".textareas .textarea-msg[lang='"+currentLang+"']").show();
    });
    $(".lang-switch-title button").click(function(){
        $(".lang-switch-title button").removeClass("active");
        $(this).addClass("active");
        var currentLangT = $(this).attr("id");
        $(".input-title-lang").hide();
        $(".input-title-lang[lang='"+currentLangT+"']").show();
    });
    $(".sudmitData").click(function(e){
        $("div.validation").html('');
        $("div.validation").attr("id","");
        var isValidate = true;
        if($("#tltEN").val() === "" && $("#tltUA").val() === "") {
            isValidate = false;
            $(".titles div.validation").attr("id","active-validation");
            $(".titles div.validation").html("<span style='color:red'>Title can't be empty!</span>");
            e.preventDefault(); 
            goToByScroll("active-validation");
        }
        if(isValidate) {
            $("#avatar_path").val($(".dz-details .dz-filename span").first().text());
            $("#addForm").submit();
        }
    });
    function goToByScroll(id){
        id = id.replace("link", "");
        $('html,body').animate({
            scrollTop: $("#"+id).offset().top-150},
            'slow');
    }
    function deleteFile(temp){
        var path = $("#dir-name").val() + "/avatars/" + $(temp).parent().find(".dz-details .dz-filename span").text();
        jQuery.ajax({
            url: '${Constants.URL}system/do/removefile',
            cache: false,
            contentType: false,
            processData: false,
            type: 'GET',
            data: 'path='+path,
            success: function(data){
                console.log(data);
            }
        });
    }
    function imageInserted(){ 
    $("label.cke_dialog_ui_labeled_label:contains('HSpace')").next().find(".cke_dialog_ui_input_text").val("15");
    $(".cke_editor_editorEN_dialog .cke_dialog_body").removeClass("image-dialog");
    $(".cke_editor_editorUA_dialog .cke_dialog_body").removeClass("image-dialog");
    $(".cke_dialog_ui_button_ok span").click();
    }
       
    function initCKE() {
        CKEDITOR.replace('editorEN', {
            filebrowserBrowseUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserUploadUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserImageBrowseUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserImageUploadUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserWindowWidth  : 800,
            filebrowserWindowHeight : 500
        });
        CKEDITOR.replace('editorUA', {
            filebrowserBrowseUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserUploadUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserImageBrowseUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserImageUploadUrl : '${Constants.URL}tools/imageupload/${folder_str}/',
            filebrowserWindowWidth  : 800,
            filebrowserWindowHeight : 500
        });
        CKEDITOR.on('instanceReady', function() { 
        $("#cke_editorEN iframe").webkitimageresize().webkittableresize().webkittdresize();
        $("#cke_editorUA iframe").webkitimageresize().webkittableresize().webkittdresize();
        
    $(".cke_button.cke_button__image.cke_button_off").click(function(){
        $(".cke_dialog_body").hide();
        setTimeout(function() {   //calls click event after a certain time
   
    $(".cke_editor_editorEN_dialog .cke_dialog_body").addClass("image-dialog");
    $(".cke_editor_editorUA_dialog .cke_dialog_body").addClass("image-dialog");
    
    if($(".cke_editor_editorUA_dialog .cke_dialog_body").hasClass("image-dialog")) {
        $(".cke_dialog_body").show();
    }
    if($(".cke_editor_editorEN_dialog .cke_dialog_body").hasClass("image-dialog")) {
        $(".cke_dialog_body").show();
    }
}, 500);
    } );    
    });
        var obj = $("#cke_120_fileInput").contents().find(".returnImage");
         obj.click("click", function (e) {
            $("#cke_71_textInput").val("s2as1");
        });
    }
</script>
