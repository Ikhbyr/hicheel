package exer2;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

public class Server implements Runnable{
    private Socket socket   = null;
    private ServerSocket server   = null;
    int port = 5000;
    @Override
    public void run() {
        // starts server and waits for a connection
        LocalDateTime startDate = LocalDateTime.now();
        System.out.println("Ehleh "+startDate.getSecond());
        int max=0, k=0;
        try
        {
            server = new ServerSocket(port);
            System.out.println("Server started");

            System.out.println("Waiting for a client ...");

            socket = server.accept();
            System.out.println("Client accepted");
            // reads message from client until "Over" is sent
            while (true)
            {
                LocalDateTime endDate = LocalDateTime.now();
                for (int i = 0; i < Machine.votes.length; i++) {
                    if(max<Machine.votes[i]){
                        max=Machine.votes[i];
                        k=i;
                    }
                }
                if(startDate.until( endDate, ChronoUnit.SECONDS )%4==0){
                    System.out.println(startDate.until( endDate, ChronoUnit.SECONDS )+" negj hugatsaanii baidlaar "+(k + 1) + " -r hun hamgiin ih " + max + " sanal awsan.");
                }
                if(startDate.until( endDate, ChronoUnit.SECONDS )>=24) {
                    System.out.println((k + 1) + " -r hun hamgiin ih " + max + " sanal awsan.");
                    break;
                }

            }
            System.out.println("Closing connection");

            // close connection
            socket.close();
            System.exit(0);
        }
        catch(IOException i)
        {
            System.out.println("Orolt");
        }
    }
}
