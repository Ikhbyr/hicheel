import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class exercise2 {
    public static void main(String[] args) {
        int mor=1;
        try {
            File f1 = new File("file1.txt");
            String[] words=null;
            FileReader fr = new FileReader(f1);
            BufferedReader br = new BufferedReader(fr);
            String s;
            try {
                File filebichih = new File("file2.txt");
                if (filebichih.createNewFile()) {
                    System.out.println("File created: " + filebichih.getName());
                } else {
                    System.out.println("File uussen.");
                }
            } catch (IOException e) {
                System.out.println("File uusgej chadsangui.");
                e.printStackTrace();
            }
            while((s = br.readLine())!=null)
            {
                words = s.split(" ");
                for (String word : words)
                {
                    if(word.charAt(0) == 'a' || word.charAt(0) == 'e' || word.charAt(0) == 'u' || word.charAt(0) == 'i' || word.charAt(0) == 'o'){
                        System.out.println("Мөрийн дугаар "+mor +" үг: "+ word);
                        try {
                            Files.write(Paths.get("file2.txt"),word.getBytes(), StandardOpenOption.APPEND);
                            Files.write(Paths.get("file2.txt")," ".getBytes(), StandardOpenOption.APPEND);
                        } catch (IOException e) {
                            System.out.println("Filed bichilt hiih bolomjgui bna.");
                            e.printStackTrace();
                        }
                    }
                }
                mor++;
            }
            fr.close();
        } catch (FileNotFoundException e) {
            System.out.println("File oldsongui.");
        } catch (IOException e) {
            System.out.println("File unshij chadsangui.");
            e.printStackTrace();
        }
    }
}
