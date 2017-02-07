/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.calculatormaven.model;

/**
 *
 * @author linhdo
 */
public class CalculatorService {
    
    private static final double PI = 3.14;
    private double area;
    
    public final double getRectangleArea(String length, String width){
        area = Double.parseDouble(length) * Double.parseDouble(width);
        return area;
    }
    public final double getCircleArea(String radius){
        return (PI * (Double.parseDouble(radius) * Double.parseDouble(radius)));
    }
    public final double getTriangle(String sideA, String sideB){
        
        return Math.sqrt((Double.parseDouble(sideA) * Double.parseDouble(sideA)) + (Double.parseDouble(sideB) * Double.parseDouble(sideB)));
    }
    
}
