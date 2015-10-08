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

/**
 *
 * @author kiwi
 */
@Controller
@Scope("session")
public class MainController {
    @RequestMapping(value = {"/","/index", "/main", "/home"}, method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView model = new ModelAndView("indexUA");
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
    @RequestMapping(value = {"/project"}, method = RequestMethod.GET)
    public ModelAndView project(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView model = new ModelAndView("projectPage");
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
