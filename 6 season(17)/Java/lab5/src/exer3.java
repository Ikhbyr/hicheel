import java.io.*;

public class exer3
{
    public static void main(String[] args) {
        Movie [] movie = new Movie[10];
        movie[0]=new Movie("Gost",2000, "USA", "horror", 3000);
        movie[1]=new Movie("Titanic",1997, "SW", "horror", 4500);
        movie[2]=new Movie("EndGame",2019, "UK", "horror", 4000);
        movie[3]=new Movie(" Vertigo", 1958, "UK", "adventure", 3220);
        movie[4]=new Movie("The Innocents",1961,"JP","adventure",4530);
        movie[5]=new Movie("Lawrence of Arabia",1962,"UK","comedy",2000);
        movie[6]=new Movie("The Deer Hunter",1978,"USA","adenture",4309);
        movie[7]=new Movie("Amadeus",1984,"UK","horror",3420);
        movie[8]=new Movie("Blade Runner",1984,"SW","action",4323);
        movie[9]=new Movie("Eyes Wide Shut",1999,"KN","historical",4356);

        String filename = "data/movie.txt";
        try{
            FileOutputStream file = new FileOutputStream(filename);
            ObjectOutputStream os = new ObjectOutputStream(file);
            os.writeObject(movie);
            os.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        double maxCost=0;
        int oldYear=2020,numberC=0,numberY=0;
        Movie[] m1 = new Movie[0];
        try{
            FileInputStream file2 = new FileInputStream(filename);
            ObjectInputStream os1 = new ObjectInputStream(file2);
            m1 = (Movie[]) os1.readObject();
            os1.close();
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        for (int i=0; i<m1.length; i++){
            if(m1[i]!=null){
                if (m1[i].getCost()>maxCost){
                    numberC = i;
                    maxCost = m1[i].getCost();
                }
                if(m1[i].getCreated_year()<oldYear){
                    oldYear = m1[i].getCreated_year();
                    numberY = i;
                }
            }else{
                break;
            }
        }

        if(m1[numberC] != null) {
            System.out.println("\tMaxCost movie is:\n" + m1[numberC].getInfo());
            System.out.println("\tOld Movie is:\n"+m1[numberY].getInfo());
        }
    }
}
