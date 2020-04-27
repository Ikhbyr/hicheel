package exer2;
import java.util.Random;

public class Main {
    static Random random = new Random();
    public static int sumMachine =1 + random.nextInt(20);
    static int candidate = 1+random.nextInt(10);
    public static void main(String[] args) {
        Runnable server = new Server();
        Thread thread = new Thread(server);
        thread.start();
        for (int i = 0; i < sumMachine; i++) {
            Runnable machine = new Machine(candidate);
            Thread thread1 = new Thread(machine);
            thread1.start();
        }
    }
}


