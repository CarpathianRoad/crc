/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.crc.model;

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
    public Integer project_category;
    

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
}
