import java.text.DecimalFormat;
import java.util.Random;

public class exercise_2 {
    static int[] nud = new int[6];
    public static void main(String[] args) {
        Random rand = new Random();
        for (int i = 0; i < 6; i++) {
            nud[i]=0;
        }
        for (int i = 0; i < 1000; i++) {
            Runnable Shoo_hayh = new Shoo_hayh(rand.nextInt(1000), nud);
            Thread thread = new Thread(Shoo_hayh);
            thread.start();
        }
        print_shoo(nud);
        find_max();
        find_min();
        probability();
    }

    public static void find_max(){
        int max = nud[0];
        int nud_too = 1;
        for (int i = 1; i < 6; i++) {
            if(max<nud[i]){
                max = nud[i];
                nud_too = i+1;
            }
        }
        System.out.println("Hamgiin ih buusan tal: "+nud_too+" buusan too: "+max);
    }
    public static void find_min(){
        int min = nud[0];
        int nud_too = 1;
        for (int i = 1; i < 6; i++) {
            if(min>nud[i]){
                min = nud[i];
                nud_too = i+1;
            }
        }
        System.out.println("Hamgiin baga buusan tal: "+nud_too+" buusan too: "+min);
    }

    public static void probability(){
        double sum_role = 0;
        for (int i = 0; i < 6; i++) {
            sum_role += nud[i];
        }
        for (int i = 0; i < 6; i++) {
            DecimalFormat format = new DecimalFormat("0.000000");
            String formatted = format.format(nud[i]/sum_role);
            System.out.println("Nudnii too: "+(i+1)+" Magadlal: "+formatted);
        }
    }

    private static void print_shoo(int[] nud) {
        for (int i = 0; i < 6; i++) {
            System.out.println((i+1)+" -r taliin too "+nud[i]);
        }
    }
}
class Shoo_hayh implements Runnable{
    Random rand = new Random();
    int shoo_nud;
    Shoo_hayh(int shidelt_too, int[] buult){
        for (int i = 0; i < shidelt_too+1; i++) {
            shoo_nud = rand.nextInt(6)+1;
            switch (shoo_nud){
                case 1:
                    buult[0]++;
                    break;
                case 2:
                    buult[1]++;
                    break;
                case 3:
                    buult[2]++;
                    break;
                case 4:
                    buult[3]++;
                    break;
                case 5:
                    buult[4]++;
                    break;
                case 6:
                    buult[5]++;
                    break;
            }
        }
    }
    @Override
    public void run() {
//        System.out.println("Thread ajillaj duuslaa");
    }
}