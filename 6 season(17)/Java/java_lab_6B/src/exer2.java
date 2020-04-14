import java.util.ArrayDeque;
import java.util.Random;

public class exer2 {
    public static void main(String[] args) {
        Random rand = new Random();
        ArrayDeque<HeavyBox> arrayDeque = new ArrayDeque<>();
        String[] color = {"Red", "Yellow", "Brown", "Blue", "Black", "White"};
        String[] name = {"ABS", "TRD", "SMD", "DOG", "BRD", "FDS"};
        for (int i = 0; i < 6; i++) {
            HeavyBox heavyBox = new HeavyBox(name[i],rand.nextInt(100),rand.nextInt(100),rand.nextInt(100),color[rand.nextInt(6)],rand.nextInt(100));
            arrayDeque.add(heavyBox);
        }
        System.out.println("Name of HeavyBox");
        for (HeavyBox heavyBox:arrayDeque){
            System.out.print("\t"+heavyBox.getName());
        }
        System.out.println("\nGet First Name");
        System.out.println("\t"+arrayDeque.getFirst().getName());
        System.out.println("Insert at start 'IOP'");
        HeavyBox heavyBoxOb = new HeavyBox("IOP",rand.nextInt(100),rand.nextInt(100),rand.nextInt(100),color[rand.nextInt(6)],rand.nextInt(100));
        arrayDeque.addFirst(heavyBoxOb);
        for (HeavyBox heavyBox:arrayDeque){
            System.out.print("\t"+heavyBox.getName());
        }
        System.out.println("\nInsert at last 'LST'");
        HeavyBox heavyBoxOb1 = new HeavyBox("LST",rand.nextInt(100),rand.nextInt(100),rand.nextInt(100),color[rand.nextInt(6)],rand.nextInt(100));
        arrayDeque.addLast(heavyBoxOb1);
        for (HeavyBox heavyBox:arrayDeque){
            System.out.print("\t"+heavyBox.getName());
        }
        System.out.println("\nHead name of objects\n"+ arrayDeque.element().getName());

    }
}
