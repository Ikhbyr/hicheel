package exer2;

import java.io.*;
import java.net.Socket;
import java.net.UnknownHostException;
import java.time.LocalDateTime;
import java.util.Random;
import java.util.Timer;

public class Machine implements Runnable{
    private Socket socket            = null;
    String address = "127.0.0.1";
    Random random = new Random();
    public static Timer timer = new Timer();
    int port = 5000, cand;
    public static int []votes;
    private int person = 1+random.nextInt(10000);
    // constructor to put ip address and port
    public Machine(int candidate){
        cand = candidate;
        votes = new int[candidate];
        for (int i = 0; i < cand; i++) {
            votes[i]=0;
        }
    }
    @Override
    public void run()
    {
        // establish a connection
        try
        {
            socket = new Socket(address, port);
            ObjectOutputStream out = new ObjectOutputStream(socket.getOutputStream());
            out.flush();
            LocalDateTime startDate = LocalDateTime.now();
            for (int i = 0; i < person; i++) {
                Vote vote = new Vote(cand);
                Thread thread = new Thread(vote);
                thread.start();
            }
            out.writeObject(votes);
            out.close();
        }
        catch(UnknownHostException u)
        {
            System.out.println(u);
        }
        catch(IOException i)
        {
            System.out.println("Aldaa");
        }

        // close the connection
        try
        {
            socket.close();
        }
        catch(IOException i)
        {
            System.out.println("Aldaa 2");
        }
    }
}
