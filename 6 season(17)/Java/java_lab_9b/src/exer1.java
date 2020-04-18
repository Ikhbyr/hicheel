public class exer1 {
    public static void main(String[] args) {
        System.out.println("e = " + Euler());
    }

    private static double Euler() {
        double e=1;
        double f=1;
        for ( int i=1; i <= 1000; i++) {
            f = f * (1.0 / i);
            if ( f == 0 ) break;
            e +=  f;
        }
        return e;
    }
}
