package num.grapecity.lab4;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class UserInfo extends AppCompatActivity {
    private EditText age, gender, phone;
    private String user_name, pass;
    private TextView name, info;
    private DatePicker date;
    private SQLiteDatabase database;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_user_info);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        database = openOrCreateDatabase("mobileLab4",MODE_PRIVATE,null);
        Bundle extras = getIntent().getExtras();
        age = findViewById(R.id.age1);
        phone = findViewById(R.id.phone1);
        date = findViewById(R.id.date1);
        name = findViewById(R.id.info_name);
        info = findViewById(R.id.info_more);
        gender = findViewById(R.id.gender1);
        if (extras != null) {
            user_name = extras.getString("name");
            name.setText(user_name);
            age.setText(String.valueOf(extras.getInt("age")));
            phone.setText(extras.getString("phone"));
            gender.setText(extras.getString("gender"));
            pass = extras.getString("pass");
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("E MMM dd HH:mm:ss z yyyy", Locale.US);
                Calendar cl = Calendar. getInstance();
                Date date1 = sdf.parse(extras.getString("date"));
                if (date1 != null) {
                    cl.setTime(date1);
                    date.init(cl.get(Calendar.YEAR), cl.get(Calendar.MONTH), cl.get(Calendar.DATE), null);
                    Log.i("Lab4", String.valueOf(date1.getMonth())
                    + " Cal "+cl.get(Calendar.MONTH)
                    + " " + cl.get(Calendar.YEAR)
                    +" " + cl.get(Calendar.DATE)
                    +" "+sdf.parse(extras.getString("date")));
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }
            Log.i("Lab4", extras.getString("date"));
        }
    }

    public void updateInfo(View view) {
        int uAge = Integer.parseInt(age.getText().toString());
        String uGender = gender.getText().toString(), uPhone = phone.getText().toString();
        Date birthDay = getDateFromDatePicker(date);
        try {
            String sql = "UPDATE UserInfo " +
                    "SET age = " + uAge + ", gender = '" + uGender + "', phone='" + uPhone + "', date='" + birthDay + "' " +
                    " WHERE Username = '" + user_name + "' AND Password = '" + pass + "';";
            database.execSQL(sql);
            Log.i("Lab 4", sql);
            info.setText("Бүртгэл амжилттай хийгдлээ.");
            info.setTextColor(Color.GREEN);
        } catch (Exception e) {
            Log.e("Lab 4", e.getMessage());
        }
    }

    public void changePass(View view) {
        Intent intent = new Intent(this, changePassword.class);
        intent.putExtra("pass", pass);
        intent.putExtra("name", user_name);
        startActivity(intent);
    }

    public static java.util.Date getDateFromDatePicker(DatePicker datePicker){
        int day = datePicker.getDayOfMonth();
        int month = datePicker.getMonth();
        int year =  datePicker.getYear();

        Calendar calendar = Calendar.getInstance();
        calendar.set(year, month, day);
        return calendar.getTime();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                return true;
        }

        return super.onOptionsItemSelected(item);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }
}