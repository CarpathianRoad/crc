/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.crc.model;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.LinkedList;
import java.util.List;
import org.apache.commons.lang.StringEscapeUtils;
import ua.aits.crc.functions.DB;
import ua.aits.crc.functions.Helpers;

/**
 *
 * @author kiwi
 */
public class ProjectModel {
    public Integer project_id;
    public String project_name_ua;
    public String project_name_en;
    public String project_text_ua;
    public String project_text_en;
    public String project_avatar;
    public Integer project_category;
    public String project_lang;
    

    public Integer getProject_id() {
        return project_id;
    }

    public void setProject_id(Integer project_id) {
        this.project_id = project_id;
    }

    public String getProject_name_ua() {
        return project_name_ua;
    }

    public void setProject_name_ua(String project_name_ua) {
        this.project_name_ua = project_name_ua;
    }

    public String getProject_name_en() {
        return project_name_en;
    }

    public void setProject_name_en(String project_name_en) {
        this.project_name_en = project_name_en;
    }

    public String getProject_text_ua() {
        return project_text_ua;
    }

    public void setProject_text_ua(String project_text_ua) {
        this.project_text_ua = project_text_ua;
    }

    public String getProject_text_en() {
        return project_text_en;
    }

    public void setProject_text_en(String project_text_en) {
        this.project_text_en = project_text_en;
    }

    public Integer getProject_category() {
        return project_category;
    }

    public void setProject_category(Integer project_category) {
        this.project_category = project_category;
    }

    public String getProject_lang() {
        return project_lang;
    }

    public void setProject_lang(String project_lang) {
        this.project_lang = project_lang;
    }

    public String getProject_avatar() {
        return project_avatar;
    }

    public void setProject_avatar(String project_avatar) {
        this.project_avatar = project_avatar;
    }
    
    
    public List<ProjectModel> getProjectsByCategory(String catID) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException {
        ResultSet result = DB.getResultSet("SELECT * FROM projects WHERE projects.project_category = " + catID + " AND projects.project_is_delete = 0 ORDER BY projects.project_id");
    	List<ProjectModel> projects = new LinkedList<>();
        while (result.next()) {
            ProjectModel temp = new ProjectModel();
            String text_ua = Helpers.html2text(result.getString("project_text_ua"));
            String text_en = Helpers.html2text(result.getString("project_text_en"));
            if(text_ua.length() > 250){
                text_ua = text_ua.substring(0,250);
            }
            if(text_en.length() > 250){
                text_en = text_en.substring(0,250);
            }
            temp.setProject_id(result.getInt("project_id"));
            temp.setProject_name_en(result.getString("project_name_en").replace("\"","&quot;"));
            temp.setProject_name_ua(result.getString("project_name_ua").replace("\"","&quot;"));
            temp.setProject_text_en(text_en);
            temp.setProject_text_ua(text_ua);
            temp.setProject_avatar(result.getString("project_avatar"));
            temp.setProject_category(result.getInt("project_category"));
            String lang = "";
        	if(!"".equals(temp.project_name_en) && temp.project_name_en != null) {
            	lang += "EN,";
        	}
        	if(!"".equals(temp.project_name_ua) && temp.project_name_ua != null) {
            	lang += "UA,";
        	}
        	if(lang.length() > 0) {
           	 
        	temp.setProject_lang(lang.substring(0, lang.length()-1));
        	}
            projects.add(temp);
        }
        DB.closeCon();
        return projects;
    }
    
    public ProjectModel getProjectByID(String id) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException {
        ResultSet result = DB.getResultSet("SELECT * FROM projects WHERE projects.project_id = " + id + " AND projects.project_is_delete = 0");
    	result.first();
        ProjectModel temp = new ProjectModel();
        temp.setProject_id(result.getInt("project_id"));
        temp.setProject_name_en(result.getString("project_name_en").replace("\"","&quot;"));
        temp.setProject_name_ua(result.getString("project_name_ua").replace("\"","&quot;"));
        temp.setProject_text_en(result.getString("project_text_en"));
        temp.setProject_text_ua(result.getString("project_text_ua"));
        temp.setProject_avatar(result.getString("project_avatar"));
        temp.setProject_category(result.getInt("project_category"));
        DB.closeCon();    
        return temp;
    }
    
    public void insertProject(String titleEN, String titleUA, String textEN, String textUA, String avatar, String category) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        DB.runQuery("INSERT INTO `projects`(`project_name_ua`, `project_name_en`, `project_text_ua`, `project_text_en`, `project_avatar`, `project_category`) VALUES ("
            	+ "'"+StringEscapeUtils.escapeSql(titleUA)+"','"+StringEscapeUtils.escapeSql(titleEN)+"','"+StringEscapeUtils.escapeSql(textUA)+"','"+StringEscapeUtils.escapeSql(textEN)+"','"+avatar+"','"+category+"');");
    	DB.closeCon();
    }
    
    public void updateProject(String id, String titleEN, String titleUA, String textEN, String textUA, String avatar, String category) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        DB.runQuery("UPDATE `projects` SET "
                + "`project_name_ua`='"+StringEscapeUtils.escapeSql(titleUA)+"',"
                + "`project_name_en`='"+StringEscapeUtils.escapeSql(titleEN)+"',"
                + "`project_text_ua`='"+StringEscapeUtils.escapeSql(textUA)+"',"
                + "`project_text_en`='"+StringEscapeUtils.escapeSql(textEN)+"',"
                + "`project_avatar`='"+avatar+"'"
                + " WHERE project_id = "+id+";");
    	DB.closeCon();
    }
    public String deleteProject(String id) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, IOException {
    	ResultSet result = DB.getResultSet("SELECT projects.project_category FROM projects WHERE projects.project_id = " + id + ";");
    	result.first();
    	DB.runQuery("UPDATE `projects` SET `project_is_delete`= 1 WHERE project_id = "+id+";");
    	String category = result.getString("project_category");
    	DB.closeCon();
    	return category;
    }
}
