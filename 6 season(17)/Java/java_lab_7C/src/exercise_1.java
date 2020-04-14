import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class exercise_1 {
    static String directory="/Users/Ikhbayar/Desktop/java_file";
    public static void main(String[] args) {
        File folder = new File(directory);
        File[] listOfFiles = folder.listFiles();
        assert listOfFiles != null;
        for (File file : listOfFiles) {
            if (file.isFile()) {
                Runnable Read_file = new Read_file(file.getName());
                Thread thread = new Thread(Read_file);
                thread.start();
            }
        }
    }
}
class Read_file implements Runnable{
    String path;
    int void_counter=0, public_counter=0, import_counter=0, while_counter=0, static_counter=0, main_counter=0;
    public Read_file(String filename){
        path = exercise_1.directory+"/"+filename;
        String[] words;
        try {
            File myObj = new File(path);
            Scanner myReader = new Scanner(myObj);
            while (myReader.hasNextLine()) {
                String data = myReader.nextLine();
                words = data.split(" ");
                for (String word : words) {
                    switch (word) {
                        case "void":
                            void_counter++;
                            break;
                        case "public":
                            public_counter++;
                            break;
                        case "import":
                            import_counter++;
                            break;
                        case "while":
                            while_counter++;
                            break;
                        case "static":
                            static_counter++;
                            break;
                        case "main":
                            main_counter++;
                            break;
                    }
                }
            }
            myReader.close();
            print_info(filename);
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        System.out.println("Thread finished. File is "+path);
    }
    public void print_info(String name){
        System.out.println(name+":");
        System.out.println("\tpublic: "+public_counter);
        System.out.println("\tvoid: "+void_counter);
        System.out.println("\timport: "+import_counter);
        System.out.println("\twhile: "+while_counter);
        System.out.println("\tstatic: "+static_counter);
        System.out.println("\tmain: "+main_counter);
    }
}