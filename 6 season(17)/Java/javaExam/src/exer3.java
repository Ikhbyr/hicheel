import java.io.*;
import java.util.ArrayList;

public class exer3 {
    public static void main(String[] args) {
        File f1 = new File("sin.txt");
        int edge = 0;
        double sinValue = 0;
        String s;
        String[] words=null;
        try {
            FileOutputStream file = new FileOutputStream("sin2.dat");
            ObjectOutputStream out2 = new ObjectOutputStream(file);
            FileReader fileReader = new FileReader(f1);
            BufferedReader br = new BufferedReader(fileReader);
            while((s = br.readLine())!=null)
            {
                words = s.split(" ");
                int i=0;
                for (String word : words)
                {
                    if(i==0)
                        edge = Integer.parseInt(word) ;
                    if(i==1)
                        sinValue = Double.parseDouble(word);
                    i++;
                }
                Sin objectSin = new Sin(edge, sinValue);
                out2.writeObject(objectSin);
            }
            out2.close();
            Sin object = null;
            FileInputStream file1 = new FileInputStream("sin2.dat");
            ArrayList<Sin> objectsList = new ArrayList<>();
            ObjectInputStream in = new ObjectInputStream(file1);
            while (file1.available()>0) {
                object = (Sin) in.readObject();
                if (object != null) {
                    objectsList.add(object);
                }
            }
            System.out.println(objectsList);
            for (Sin sin:objectsList){
                System.out.print(sin.getEdge()+" "+sin.getSinValue()+"\t");
            }
            in.close();
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
