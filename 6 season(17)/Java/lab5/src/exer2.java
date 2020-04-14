import java.io.*;
import java.util.ArrayList;
import java.util.Random;

public class exer2 {
    public static void main(String[] args) {
        String filename = "data/array.dat";
        String filename1 = "data/maxarray.dat";
        int maxSum=0;
        Random rand = new Random();
        ArrayList<ArrayList<Integer>> array = new ArrayList<>();
        ArrayList<ArrayList<Integer>> arrays1;
        ArrayList<Integer> basketArray = new ArrayList<>();
        ArrayList<Integer> a = new ArrayList<>();
        ArrayList<Integer> b = new ArrayList<>();
        ArrayList<Integer> c = new ArrayList<>();
        ArrayList<Integer> d = new ArrayList<>();
        for(int i=0; i<3; i++){
            a.add(rand.nextInt(100));
            b.add(rand.nextInt(100));
            c.add(rand.nextInt(100));
            d.add(rand.nextInt(100));
        }
        array.add(a);
        array.add(b);
        array.add(c);
        array.add(d);
        //write array to file
        try {
            FileOutputStream file1 = new FileOutputStream(filename);
            ObjectOutputStream write = new ObjectOutputStream(file1);
            write.writeObject(array);
            write.close();
            System.out.println("Done write");
        }
        catch (FileNotFoundException e) {
            System.out.println("File oldsongui.");
        } catch (IOException e) {
            System.out.println("File unshij chadsangui.");
            e.printStackTrace();
        }

        try{
            FileInputStream file1 = new FileInputStream(filename);
            ObjectInputStream os1 = new ObjectInputStream(file1);
            arrays1 = (ArrayList<ArrayList<Integer>>) os1.readObject();
            FileOutputStream file2 = new FileOutputStream(filename1);
            ObjectOutputStream write = new ObjectOutputStream(file2);
//            System.out.println(arrays1.get(0));
            for (int num: arrays1.get(0)){
                maxSum = maxSum + num;
                basketArray = arrays1.get(0);
            }
            for (ArrayList<Integer> array1: arrays1){
                int sum=0;
                for (int number: array1){
                    sum+=number;
                }
                System.out.println(array1 + " sum is: " + sum);
                if (maxSum < sum){
                    maxSum = sum;
                    basketArray = array1;
                }
            }
            System.out.println("MaxSum is: "+ maxSum+" Array is: "+basketArray);
            write.writeObject(basketArray);
            System.out.println("Write done Array!!!");
            write.close();
            os1.close();
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
