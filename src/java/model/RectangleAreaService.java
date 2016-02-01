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
public class RectangleAreaService {
    public String getArea(String width,String length){
        double w = Double.parseDouble(width);
        double l = Double.parseDouble(length);
        double a = l *w;
        String area = String.valueOf(a);
        return "The area of the rectangle is " + area;
    }
    
    
}
