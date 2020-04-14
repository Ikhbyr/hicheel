import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.util.Random;

public class exer1 {
    public static void main(String[] args) throws FileNotFoundException {
        Random rand = new Random();
        PrintWriter writer =null;
        writer = new PrintWriter(new File("sin.txt"));
        for (int i=0;i<=360;i++){
            writer.write(i+" "+Math.sin(i)+"\n");
        }
        writer.flush();
        writer.close();
        File file1 = new File("input.txt");
        try(PrintWriter out = new PrintWriter(file1);){
            int randNum = rand.nextInt(360);
            out.println(randNum);
            out.flush();
        }
    }
}
