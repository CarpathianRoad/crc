/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.crc.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.text.ParseException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ua.aits.crc.model.CategoryModel;
import ua.aits.crc.model.ProjectModel;
import ua.aits.crc.functions.Constants;
import ua.aits.crc.functions.Helpers;
import ua.aits.crc.functions.Transliterator;

/**
 *
 * @author kiwi
 */
@Controller
@Scope("session")
public class SystemController {
    
    ProjectModel Projects = new ProjectModel();
    CategoryModel Categories = new CategoryModel();
    Transliterator TransliteratorClass = new Transliterator();
    
    @RequestMapping(value = {"/system/index", "/system/main", "/system/home"}, method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("/system/index");
        model.addObject("projects", Projects.getProjectsByCategory("1"));
        model.addObject("category", "1");
    	model.addObject("cat_name", Categories.getCatName("1"));
        return model;
    }
    
    @RequestMapping(value = {"/system/index/{id}", "/system/main/{id}", "/system/home/{id}"}, method = RequestMethod.GET)
    public ModelAndView category(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("/system/index");
        model.addObject("projects", Projects.getProjectsByCategory(id));
        model.addObject("category", id);
    	model.addObject("cat_name", Categories.getCatName(id));
        return model;
    }
    
    @RequestMapping(value = {"/system/add/{id}", "/system/add/{id}/"}, method = RequestMethod.GET)
    public ModelAndView projectAdd(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	ModelAndView model = new ModelAndView("/system/add");
    	String folder = "files";
    	model.addObject("folder", folder);
    	model.addObject("folder_str", folder.replace('/', '|'));
    	model.addObject("category", id);
        model.addObject("image_size", Helpers.getImageSize(id));
    	model.addObject("cat_name", Categories.getCatName(id));
    	return model;
    }
        
    @RequestMapping(value = {"/system/edit/{id}", "/system/edit/{id}/"}, method = RequestMethod.GET)
    public ModelAndView projectEdit(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	ModelAndView model= new ModelAndView("/system/edit");
    	ProjectModel temp = Projects.getProjectByID(id);
        String folder = "files";
    	model.addObject("folder", folder);
    	model.addObject("folder_str", folder.replace('/', '|'));
    	model.addObject("category", temp.project_category);
        model.addObject("image_size", Helpers.getImageSize(temp.project_category.toString()));
    	model.addObject("cat_name", Categories.getCatName(temp.project_category.toString()));
        model.addObject("project", temp);
    	return model;
    }
    
    @RequestMapping(value = {"/system/delete/{id}", "/system/delete/{id}/"}, method = RequestMethod.GET)
    public ModelAndView projectDelete(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	ModelAndView model = new ModelAndView("/system/delete");
        ProjectModel temp = Projects.getProjectByID(id);
    	model.addObject("project", temp);
    	model.addObject("cat_name", Categories.getCatName(temp.project_category.toString()));
    	return model;
    }
        
    @RequestMapping(value = {"/system/login", "/system/logon", "/system/enter"}, method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView model = new ModelAndView("/system/login");
        return model;
    }
        
    /** Ajax controllers
     * @param request
     * @param response
     * @return
     * @throws java.lang.Exception  **/
    @RequestMapping(value = {"/system/ajax/checkUser", "/system/ajax/checkUser/"}, method = RequestMethod.GET)
    public @ResponseBody String checkUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        if("admin".equals(request.getParameter("user_name")) && "ard3000!".equals(request.getParameter("user_password"))) {
            return "true";
        }
        else {
            return null;
        }
    }
    
    /* Form Controllers */
    @RequestMapping(value = {"/system/do/login","/system/do/login/"}, method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("user_name") String user_name, @RequestParam("user_password") String user_password, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	request.setCharacterEncoding("UTF-8");
    	HttpSession session = request.getSession(true);
        session.setAttribute("user",  "admin");
    	return new ModelAndView("redirect:" + "/system/index");   
    }
    
    @RequestMapping(value = {"/system/do/logout","/system/do/logout/"})
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(false);
        if (session != null) { session.invalidate(); }
        return new ModelAndView("redirect:" + "/system/login"); 
    } 
    
    @RequestMapping(value = "/system/do/insertdata", method = RequestMethod.POST)
    public ModelAndView addArticle(HttpServletRequest request) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedEncodingException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	String titleEN = request.getParameter("titleEN");
    	String titleUA = request.getParameter("titleUA");
    	String textEN = request.getParameter("textEN");
    	String textUA = request.getParameter("textUA");
    	String textAvaUA = request.getParameter("avatar_textUA");
    	String textAvaEN = request.getParameter("avatar_textEN");
    	String avatar = request.getParameter("avatar_path");
    	String category = request.getParameter("category");
    	Projects.insertProject(titleEN, titleUA, textEN, textUA, textAvaEN, textAvaUA, avatar, category);
    	return new ModelAndView("redirect:" + "/system/index/"+category);
    }
        
    @RequestMapping(value = "/system/do/editdata", method = RequestMethod.POST)
    public ModelAndView editArticle(HttpServletRequest request) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedEncodingException, IOException {
    	request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("project_id");
    	String titleEN = request.getParameter("titleEN");
    	String titleUA = request.getParameter("titleUA");
    	String textEN = request.getParameter("textEN");
    	String textUA = request.getParameter("textUA");
    	String textAvaUA = request.getParameter("avatar_textUA");
    	String textAvaEN = request.getParameter("avatar_textEN");
    	String avatar = request.getParameter("avatar_path");
    	String category = request.getParameter("category");
    	
    	Projects.updateProject(id, titleEN, titleUA, textEN, textUA, textAvaEN, textAvaUA, avatar, category);
    	return new ModelAndView("redirect:" + "/system/index/"+category);
    }
        
    @RequestMapping(value = {"/system/do/deleteproject/{id}","/system/do/deleteproject/{id}/"})
    public ModelAndView deleteArticle(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	request.setCharacterEncoding("UTF-8");
    	return new ModelAndView("redirect:" + "/system/index/" + Projects.deleteProject(id));
    }
        
    /* File functions */
    
    @RequestMapping(value = {"/tools/imageupload/{folder}/","/tools/imageupload/{folder}"}, method = RequestMethod.GET)
    public ModelAndView fileManager (@PathVariable("folder") String folder,HttpServletRequest request, HttpServletResponse response) throws Exception {
        String path = request.getParameter("path");
        String type = request.getParameter("type");
        String ckeditor = request.getParameter("CKEditor");
        String num = request.getParameter("CKEditorFuncNum");
        ModelAndView model = new ModelAndView("/tools/FileDrag");
        model.addObject("ckeditor", ckeditor);
        model.addObject("num", num);
        model.addObject("type", type);
        model.addObject("folder", folder.replace('|', '/'));
        if("".equals(path)) {
            model.addObject("path",path.replace(",", "/"));
        }
   	return model;
    }
        
    @RequestMapping(value = {"/system/do/uploadimage", "/system/do/uploadimage/"}, method = RequestMethod.POST)
    public @ResponseBody String uploadImageHandler(@RequestParam("file") MultipartFile file, @RequestParam("path") String path,  HttpServletRequest request) {
    	String name = file.getOriginalFilename();
        name = TransliteratorClass.transliterate(name);
    	if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
            	File dir = new File(Constants.home+path);
            	if (!dir.exists())
                	dir.mkdirs();
            	File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
            	try (BufferedOutputStream stream = new BufferedOutputStream( new FileOutputStream(serverFile))) {
                	stream.write(bytes);
            	}
            	return "";
            } catch (Exception e) {
            	return "You failed to upload " + name + " => " + e.getMessage();
            }
    	} else {
        	return "You failed to upload " + name + " because the file was empty.";
    	}
    }
    
    @RequestMapping(value = {"/system/do/uploadfile", "/system/do/uploadfile/"}, method = RequestMethod.POST)
    public @ResponseBody String uploadFileHandler(@RequestParam("file") MultipartFile file, @RequestParam("path") String path,  HttpServletRequest request) {
    	String name = file.getOriginalFilename();
    	if (!file.isEmpty()) {
        	try {
            	byte[] bytes = file.getBytes();
            	File dir = new File(Constants.home+path);
            	if (!dir.exists())
                	dir.mkdirs();
            	File serverFile = new File(dir.getAbsolutePath() + File.separator + name);
            	try (BufferedOutputStream stream = new BufferedOutputStream( new FileOutputStream(serverFile))) {
                	stream.write(bytes);
            	}
            	return "";
        	} catch (Exception e) {
            	return "You failed to upload " + name + " => " + e.getMessage();
        	}
    	} else {
        	return "You failed to upload " + name + " because the file was empty.";
    	}
    }
    
    @RequestMapping(value = "/system/do/removefile", method = RequestMethod.GET)
    public @ResponseBody String removeFileOrDir(HttpServletRequest request) {
    	String path = request.getParameter("path");
    	File temp = new File(Constants.home + path);
    	Boolean result = temp.delete();
    	return result.toString();
    }
}
