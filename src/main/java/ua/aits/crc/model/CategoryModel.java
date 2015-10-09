/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.crc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import ua.aits.crc.functions.DB;

/**
 *
 * @author kiwi
 */
public class CategoryModel {
    public Integer category_id;
    public String category_name_en;
    public String category_name_ua;

    public Integer getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Integer category_id) {
        this.category_id = category_id;
    }

    public String getCategory_name_en() {
        return category_name_en;
    }

    public void setCategory_name_en(String category_name_en) {
        this.category_name_en = category_name_en;
    }

    public String getCategory_name_ua() {
        return category_name_ua;
    }

    public void setCategory_name_ua(String category_name_ua) {
        this.category_name_ua = category_name_ua;
    }
    
    public String getCatName(String id)throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException {
        ResultSet result = DB.getResultSet("select * from categories where id = '" + id + "';");
        String temp = "";
        while (result.next()) { 
            temp = result.getString("title_en");
        }
        DB.closeCon();
        return temp;
    }
}
