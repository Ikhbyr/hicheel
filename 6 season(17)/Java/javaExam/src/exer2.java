import java.io.*;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Scanner;

public class exer2 {
    static LinkedList obList = new LinkedList();
    public static void main(String[] args) throws FileNotFoundException {
        File f1 = new File("sin.txt");
        Scanner scanner = new Scanner(new File("input.txt"));
        int readEdge = scanner.nextInt();
        String[] words=null;
        FileReader fr = null;
        String s;
        int i,edge=0;
        double sin = 0;
        HashMap<Integer, Double> lists = new HashMap<Integer, Double>();
        try {
            fr = new FileReader(f1);
            BufferedReader br = new BufferedReader(fr);
            while((s = br.readLine())!=null)
            {
                words = s.split(" ");
                i=0;
                for (String word : words)
                {
                    if(i==0)
                        edge = Integer.parseInt(word) ;
                    if(i==1)
                        sin = Double.parseDouble(word);
                    i++;
                }
                Sin objectSin = new Sin(edge, sin);
                obList.add(objectSin);
                lists.put(edge,sin);
            }
            System.out.println("List is: " + lists);
            System.out.println(
                    "Unshsan ontsog: "+readEdge
            );
            System.out.println("Hargalzah sin utga: " + lists.get(readEdge));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
