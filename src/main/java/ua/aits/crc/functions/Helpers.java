/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.crc.functions;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.jsoup.Jsoup;

/**
 *
 * @author kiwi
 */
public class Helpers  {
    
    public static String html2text(String html) {
    	return Jsoup.parse(html).text();
    }
    
    public static String replaceChars(String text) {
        text = text.replaceAll("[\\x00-\\x1F]", "");
    	text = text.replaceAll("'\\<.*?>","");
    	text = text.replaceAll("'", "\\\\'");
    	text = text.replaceAll("\\\"", "");
    	text = text.replaceAll("’", "");
        text = text.replaceAll("–", "-");
        text = text.replaceAll(",", "");
        text = text.replaceAll("”", "");
   	text = text.replace(".", "");
   	text = text.replaceAll("/", "");
   	text = text.replace("\\", "");
   	text = text.replaceAll("“", "");
   	text = text.replaceAll("„", "");
   	text = text.replaceAll("‘", "");
    	text = text.replaceAll("«", "");
    	text = text.replaceAll("»", "");
    	text = text.replaceAll("”","");
    	return text;
    }
    
    public static Boolean checkOldArticle(String actual_date) throws ParseException{
        String date_str = actual_date.replace("/", ".");
        DateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
        Date actual = dateFormat.parse(date_str);
        Date today = new Date();
        return actual.before(today);
    }
    
    public static boolean isNumeric(String str)  
    {  
        try 
        {  
            double d = Double.parseDouble(str);  
        }  
        catch(NumberFormatException nfe)  
        {  
            return false;  
        }  
        return true;  
    }
    
    public static String getImageSize(String num) {
        String imageSize = "";
        switch(num) {
            case "1" :
                imageSize = "571x451 pixels";
                break;
            case "2" :
                imageSize = "562x453 pixels";
                break;
            case "3" :
                imageSize = "634x452 pixels";
                break;
            case "4" :
                imageSize = "604x452 pixels";
                break;
        }
        return imageSize;
    }
}

