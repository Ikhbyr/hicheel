package com.company;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Movie implements Serializable {

    private String name="";
    private int date=0;
    private String country = "";
    private String type = "";
    private int price = 0;
    //Constructor
    Movie(String name, int date, String country, String type, int price){
        super();
        this.name=name;    this.date=date;    this.country=country;
        this.type=type;    this.price=price;
    }
    //add a movie data to list method
    public void setMovie(String name, int date, String country, String type, int price){
        this.name=name;    this.date=date;    this.country=country;
        this.type=type;    this.price=price;
    }
    public ArrayList<String> getMovie(int index){
        ArrayList<String> retList = new ArrayList<>();
        retList.add(this.name);
        retList.add(String.valueOf(this.date));
        retList.add(this.country);
        retList.add(this.type);
        retList.add(String.valueOf(this.price));
        return retList;
    }
    //get Methods


    public int getDate() {
        return date;
    }

    public int getPrice() {
        return price;
    }

    public String getCountry() {
        return country;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }
}
