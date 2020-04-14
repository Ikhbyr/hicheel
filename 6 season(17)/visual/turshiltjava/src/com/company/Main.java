package com.company;

import java.io.*;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 * This /Lab5_3/ code is written by A.Lkhagvadorj 17B1NUM2406 in Java
 * **/
public class Main  {

    public static void main(String[] args ) throws IOException, ClassNotFoundException {
        ArrayList<Movie> movieList = new ArrayList<>();
        movieList.add(new Movie("Joker ",2019,"US ","Crime ", 55000000));
        movieList.add(new Movie("1917 ",2019,"UK ","War ",100000000));
        movieList.add(new Movie("Back to the Future ",1985 ,"Us ","Action ",8820000));
        movieList.add(new Movie("Train to Busan ",2016 ,"Korea ","Action ",8820000));
        movieList.add(new Movie("Deadpool 2 ",2018,"Us ","Action ",110000000));
        movieList.add(new Movie("Spirited Away ",2002 ,"Japan ","Animation ",19000000));
        movieList.add(new Movie("Titanic ",1997 ,"US ","Drama ",200000000));
        movieList.add(new Movie("Skyfall ",2012 ,"UK ","Action ",210000000));
        movieList.add(new Movie("Up ",2009,"UK ","Animation ",19000000));


//        Movie [] movie = new Movie[10];
//        movie[0]=new Movie("Gost",2000, "USA", "horror", 3000);
//        movie[1]=new Movie("Titanic",1997, "SW", "horror", 4500);
//        movie[2]=new Movie("EndGame",2019, "UK", "horror", 4000);
//        movie[3]=new Movie(" Vertigo", 1958, "UK", "adventure", 3220);
//        movie[4]=new Movie("The Innocents",1961,"JP","adventure",4530);
//        movie[5]=new Movie("Lawrence of Arabia",1962,"UK","comedy",2000);
//        movie[6]=new Movie("The Deer Hunter",1978,"USA","adenture",4309);
//        movie[7]=new Movie("Amadeus",1984,"UK","horror",3420);
//        movie[8]=new Movie("Blade Runner",1984,"SW","action",4323);
//        movie[9]=new Movie("Eyes Wide Shut",1999,"KN","historical",4356);



        FileOutputStream fout = new FileOutputStream("movieList.txt");
        ObjectOutputStream writer = new ObjectOutputStream(fout);
        writer.writeObject(movieList);
writer.close();

        FileInputStream fin = new FileInputStream("movieList.txt");
        ObjectInputStream reader = new ObjectInputStream(fin);
//        DataInputStream reader = new DataInputStream(fin);

        ArrayList<Movie> inputMovieList = new ArrayList<>();
        inputMovieList = (ArrayList<Movie>) reader.readObject();
        System.out.println(inputMovieList.get(1).getCountry());

reader.close();
    }
}
