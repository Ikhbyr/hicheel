package num.grapecity.lab5;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import android.Manifest;
import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.nfc.Tag;
import android.os.Bundle;
import android.provider.CalendarContract;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.Date;

public class CalendarEvent extends AppCompatActivity {
    private static final int MY_CAL_REQ = 2;
    private static final String Tag_Text = "Calendar_Activity";
    LinearLayout lnrLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calendar_event);
        lnrLayout = findViewById(R.id.calendarLayout);
        if(this.checkCalendarPermission()){
            this.getDataFromEventTable();
        }
    }

    @SuppressLint("Recycle")
    public void getDataFromEventTable() {
        Cursor cur;
        ContentResolver cr = getContentResolver();

        String[] mProjection =
                {
                        "_id",
                        CalendarContract.Events.TITLE,
                        CalendarContract.Events.EVENT_LOCATION,
                        CalendarContract.Events.DTSTART,
                        CalendarContract.Events.DTEND,
                };

        Uri uri = CalendarContract.Events.CONTENT_URI;
        String selection = CalendarContract.Events.DTSTART + " BETWEEN ? and ?";

        long now = (new Date()).getTime();
        long weekadded = now + (1000 * 60 * 60 * 24 * 7);
        String[] selectionArgs = new String[]{String.valueOf(now), String.valueOf(weekadded)};

        cur = cr.query(uri, mProjection, selection, selectionArgs, null);
        assert cur != null;
        Log.v(Tag_Text, String.valueOf(cur.getCount()));
        while (cur.moveToNext()) {
            String title = cur.getString(cur.getColumnIndex(CalendarContract.Events.TITLE));
            String pin = cur.getString(cur.getColumnIndex(CalendarContract.Events.DTSTART));
            Log.i(Tag_Text, pin);
            Log.i(Tag_Text, "Title: " + title);
            TextView tv1 = new TextView(this);
            tv1.setText(title);
            lnrLayout.addView(tv1);
        }
    }


    public boolean checkCalendarPermission() {
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.READ_CALENDAR)
                != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.READ_CALENDAR}, MY_CAL_REQ);
        } else {
            return true;
        }
        return false;
    }
}