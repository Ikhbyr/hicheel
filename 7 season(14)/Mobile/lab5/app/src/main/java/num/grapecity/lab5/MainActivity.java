package num.grapecity.lab5;

import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }


    public void switchCalendar(View v) {
        Intent intent = new Intent(this, CalendarEvent.class);
        startActivity(intent);
    }

    public void switchContactList(View v) {
        Intent intent = new Intent(this, Contact.class);
        startActivity(intent);
    }

    public void switchLab4(View v) {
        Intent intent = new Intent(this, Lab4_contentPro.class);
        startActivity(intent);
    }
}