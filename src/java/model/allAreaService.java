/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author John
 */
public class allAreaService {
    
    public String getRecArea(String width,String length){
        double w = Double.parseDouble(width);
        double l = Double.parseDouble(length);
        double a = l *w;
        String area = String.valueOf(a);
        return "The area of the rectangle is " + area;
    }
    
    public String getCirArea(String radius){
        double r = Double.parseDouble(radius);
        double a = (int)((Math.PI * Math.pow(r, 2))*100)/100.0;
        String area = String.valueOf(a);
        return "The area of the circle is " + area;
    }
    
    public String getTriArea(String base,String height){
        String base1 = base;
        String height1= height;
        
    
        if(base1 == null || height1 == null){
            return "You have Failed to complete the form";
        }else{
            double b = Double.parseDouble(base);
            double h = Double.parseDouble(height);
            double a = (.5)*(b *h);
            String area = String.valueOf(a);
        return "The area of the triangle is " + area;
        }
        
       
    }
}
