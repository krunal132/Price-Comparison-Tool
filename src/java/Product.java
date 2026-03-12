/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Krunal
 */
public class Product {

    private int id;
    private String name;
    private double price;
    private String image;
    private String source;

    Product() {
    }

    public void set_id(int i) {
        id = i;
    }

    public void set_name(String i) {
        name = i;
    }

    public void set_price(double i) {
        price = i;
    }
    
    public void set_image(String i) {
        image = i;
    }
    
    public void set_source(String i) {
        source = i;
    }

    public int get_id() {
        return id;
    }

    public String get_name() {
        return name;
    }
    
    public String get_image() {
        return image;
    }

    public double get_price() {
        return price;
    }
    
    public String get_source() {
        return source;
    }
}


//done