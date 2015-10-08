/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.crc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author kiwi
 */
@Controller
@Scope("session")
public class SystemController {
    @RequestMapping(value = {"/system/index", "/system/main", "/system/home"}, method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView model = new ModelAndView("/system/index");
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
        if("admin".equals(request.getParameter("user_name")) && "admin".equals(request.getParameter("user_password"))) {
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
}
