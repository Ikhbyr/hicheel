import java.util.*;

public class exer3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        Scanner name = new Scanner(System.in);

        int pr;
        LinkedList friends = new LinkedList();
        System.out.println("Belen ogogdol ashiglah bol '1'\nOor utga oruulah bol '2' DEER darna uu");
        pr = input.nextInt();
        if (pr==1){
            LinkedList friendship1 = new LinkedList();
            friendship1.add("Mike");
            friendship1.add("Nike");
            friends.add(friendship1);
            LinkedList friendship2 = new LinkedList();
            friendship2.add("Otto");
            friendship2.add("Peter");
            friends.add(friendship2);
            LinkedList friendship3 = new LinkedList();
            friendship3.add("Mike");
            friendship3.add("Peter");
            friends.add(friendship3);
            LinkedList friendship4 = new LinkedList();
            friendship4.add("Irvan");
            friendship4.add("Otto");
            friends.add(friendship4);
        }else {
            //Garaas ogogdol oruulahiig songoson uyd daraah program ajillana
            System.out.println("Naizuudiin holboonii toog oruulna uu? ");
            pr = input.nextInt();
            for (int i = 0; i < pr; i++) {
                LinkedList friend = new LinkedList();
                for (int j = 0; j < 2; j++) {
                    System.out.println((i + 1) + " -r moriin " + (j + 1) + "-r baganii ner oruul.");
                    //naizuudiin neriig garaas awch list uusgene
                    friend.add(name.nextLine());
                }
                friends.add(friend);
            }
        }
        System.out.println(friends);
        //SortedSet collection ashiglasnaar nersuud eremlegdej hadgalagdana
        Iterator itr = friends.iterator();
        SortedSet<String> names = new TreeSet<>();
        while(itr.hasNext()){
            LinkedList student = (LinkedList) itr.next();
            names.add((String) student.get(0));
            names.add((String) student.get(1));
        }
        //Eremblegdsen nersiinhee tuslamjtaigaar tuhain hunii naizuudiig haij olno
        Iterator itr1 = names.iterator();
        while(itr1.hasNext()){
            String name1 = (String) itr1.next();
            System.out.print(name1+" :");
            Iterator friendship = friends.iterator();
            while(friendship.hasNext()){
                LinkedList friend = (LinkedList) friendship.next();
                //Tuhain hun ni oldwol esreg bagandah hunii neriig delgetsnd gargah ystoi
                if(friend.get(0).equals(name1)){
                    System.out.print(" "+friend.get(1));
                }
                if(friend.get(1).equals(name1)){
                    System.out.print(" "+friend.get(0));
                }
            }
            System.out.println(" -тай найзалдаг.");
        }
    }
}
