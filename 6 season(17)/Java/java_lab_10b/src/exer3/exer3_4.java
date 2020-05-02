package exer3;

public class exer3_4 {
    public static void main(String[] args) {
        String a = "Mongogolia";
        String b = "gol";
        System.out.println(search(a,b));
    }
    public static int search(String a, String b){
        for (int i = 0; i < a.length(); i++) {
            if(a.charAt(i)==b.charAt(0)){
                for (int j = 0,l=i; j < b.length(); j++,l++) {
                    if (b.charAt(j)==a.charAt(l) && b.length()-1==j){
                        return i+1;
                    }
                }
            }
        }
        return 0;
    }
}
