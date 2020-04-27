package exer2;

import java.util.Random;

public class Vote implements Runnable{
    Random random = new Random();
    int vote;
    public Vote(int candidate){
        vote = random.nextInt(candidate);
    }

    @Override
    public void run() {
        Machine.votes[vote]=Machine.votes[vote]+1;
    }
}
