/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.crc.controller;

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
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.springframework.web.bind.annotation.PathVariable;
import ua.aits.crc.model.ProjectModel;

/**
 *
 * @author kiwi
 */
@Controller
@Scope("session")
public class MainController {
    
    ProjectModel Projects = new ProjectModel();
    
    @RequestMapping(value = {"/{lan}/index", "/{lan}/main", "/{lan}/home"}, method = RequestMethod.GET)
    public ModelAndView index(@PathVariable("lan") String lan, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("index"+lan.toUpperCase());
        model.addObject("energy", Projects.getProjectsByCategory("1"));
        model.addObject("ecology", Projects.getProjectsByCategory("2"));
        model.addObject("tourism", Projects.getProjectsByCategory("3"));
        model.addObject("soc-projects", Projects.getProjectsByCategory("4"));
        return model;
    }
    @RequestMapping(value = {"/indexEN"}, method = RequestMethod.GET)
    public ModelAndView indexEN(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView model = new ModelAndView("indexEN");
        return model;
    }
    @RequestMapping(value = {"/indexUA"}, method = RequestMethod.GET)
    public ModelAndView indexUA(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView model = new ModelAndView("indexUA");
        return model;
    }
    @RequestMapping(value = {"/{lan}/project/{id}"}, method = RequestMethod.GET)
    public ModelAndView project(@PathVariable("lan") String lan, @PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("projectPage");
        model.addObject("project", Projects.getProjectByID(id));
        model.addObject("lan", lan);
        return model;
    }
    
    @RequestMapping(value = {"/{lan}/tenerife"}, method = RequestMethod.GET)
    public ModelAndView tenerife(@PathVariable("lan") String lan, HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("tenerife");
        model.addObject("lan", lan);
        return model;
    }
    
    @RequestMapping(value = {"/sendmail/", "/sendmail"}, method = RequestMethod.GET)
    public @ResponseBody
    String sendMail(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String text = request.getParameter("text");
        final String username = "office@crc.org.ua";
        final String password = "crossroad2000";
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication()  {
                return new javax.mail.PasswordAuthentication( username, password);
            }
        });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(email));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("sirakandrew@gmail.com"));
            message.setSubject("Mail from site");
            message.setText("Name: "+name
                    + "\nEmail: " + email 
                    + "\n\n" + text);
            Transport.send(message);
            return "done";
	} catch (MessagingException e) {
            throw new RuntimeException(e);
	}
    }
}
