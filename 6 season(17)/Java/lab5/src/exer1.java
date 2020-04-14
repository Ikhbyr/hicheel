import java.io.*;

public class exer1 {
    public static void main(String[] args) throws IOException {
        String filename1="data/file1.txt";
        String filename2="data/file2.txt";
        try {
            FileOutputStream file1 = new FileOutputStream(filename1);
            ObjectOutputStream os = new ObjectOutputStream(file1);
            os.writeInt(22);
            os.writeInt(232);
            os.writeInt(-1);
            os.writeInt(231);
            os.writeInt(-22);
            os.writeInt(233);
            os.close();
            System.out.println("Done write");
        }
        catch (FileNotFoundException e) {
            System.out.println("File oldsongui.");
        } catch (IOException e) {
            System.out.println("File unshij chadsangui.");
            e.printStackTrace();
        }
        int x,s=0;
        try{
            FileInputStream file1 = new FileInputStream("file1.txt");
            ObjectInputStream os1 = new ObjectInputStream(file1);
            FileOutputStream file2 = new FileOutputStream(filename2);
            ObjectOutputStream write = new ObjectOutputStream(file2);
            while(os1.available()>0) {
                x = os1.readInt();
                System.out.println("Number is: " + x);
                write.writeInt(x);
                s=s+x;
            }
            write.writeInt(s);
            System.out.println("Done writing. Sum is: " + s);
            write.close();
            os1.close();
        }
        catch (FileNotFoundException e) {
            System.out.println("File oldsongui.");
        } catch (IOException e) {
            System.out.println("File unshij chadsangui.");
            e.printStackTrace();
        }
        FileInputStream file1 = new FileInputStream("file2.txt");
        ObjectInputStream os1 = new ObjectInputStream(file1);
        while(os1.available()>0) {
            x = os1.readInt();
            System.out.println("File-2 Number is: " + x);
            s=s+x;
        }
        os1.close();
    }
}
