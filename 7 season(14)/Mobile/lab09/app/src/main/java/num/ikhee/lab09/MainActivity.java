package num.ikhee.lab09;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class MainActivity extends AppCompatActivity {
    private static final String TAG = "LAB_9";
    private EditText m, n, k;
    private Button addBtn;
    private ListView listView;
    Handler mHandler;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        addBtn = findViewById(R.id.addBtn);
        m = findViewById(R.id.m);
        n = findViewById(R.id.n);
        k = findViewById(R.id.k);
        listView = findViewById(R.id.mobile_list);
    }

    public void addList(View view) {
        Log.i(TAG, "Нэмэх үйлдэл хийгдэхэд бэлэн боллоо."+m.getText());
        if (m.getText().toString().equals("") || k.getText().toString().equals("") || n.getText().toString().equals("")) {
            Toast.makeText(getApplicationContext(), "Шаардлагатай талбаруудыг оруулна уу.", Toast.LENGTH_SHORT).show();
        } else {
            final int dawt = Integer.parseInt(m.getText().toString());
            long sec = Long.parseLong(k.getText().toString());
            if (sec == 0) {
                Toast.makeText(getApplicationContext(), "0 секунд оруулах боломжгүй.", Toast.LENGTH_SHORT).show();
                return;
            }
            sec = sec*1000;
            final ArrayList<String> listArray = new ArrayList<>();
            final int number = Integer.parseInt(n.getText().toString());
            final int[] counter = { 0 };
            addBtn.setEnabled(false);
            mHandler = new Handler(Looper.getMainLooper());
            final long finalSec = sec;
            addBtn.setEnabled(true);
            new Thread(new Runnable() {
                @Override
                public void run() {
                    for (int i = 0; i <= dawt; i++) {
                        try {
                            Thread.sleep(finalSec);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }

                        //Update the value background thread to UI thread
                        mHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                Log.i(TAG, "Duudagdlaa "+counter[0]);
                                Date date = new Date();
                                @SuppressLint("SimpleDateFormat") DateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
                                int listNumb = number + counter[0] * dawt;
                                String listName = listNumb + " - " + df.format(date);
                                listArray.add(listName);
                                counter[0] = counter[0] + 1;
                                setAdapterData(listArray);
                            }
                        });
                    }
                }
            }).start();
            addBtn.setEnabled(true);
        }
    }

    public void setAdapterData(ArrayList<String> mara) {
        ArrayAdapter<String> adapter = new ArrayAdapter<>(this, R.layout.activity_listview, mara);
        listView.setAdapter(adapter);
    }
}