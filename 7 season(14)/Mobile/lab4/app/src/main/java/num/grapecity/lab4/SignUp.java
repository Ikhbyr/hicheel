package num.grapecity.lab4;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;

import java.util.Calendar;
import java.util.Date;

public class SignUp extends AppCompatActivity {
    private SQLiteDatabase database;
    private String user_name, password;
    private EditText age, name, passwordT, passwordRe, gender, phone;
    private TextView login_info;
    private DatePicker date;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sign_up);
        Bundle extras = getIntent().getExtras();
        this.initData();
        if (extras != null) {
            user_name = extras.getString("name");
            password = extras.getString("password");
            passwordT.setText(password);
            name.setText(user_name);
        }
    }

    public void initData() {
        age = findViewById(R.id.age);
        name = findViewById(R.id.user_name);
        passwordT = findViewById(R.id.password);
        passwordRe = findViewById(R.id.rePassword);
        gender = findViewById(R.id.gender);
        phone = findViewById(R.id.phone);
        login_info = findViewById(R.id.info_login);
        date = findViewById(R.id.date);
        database = openOrCreateDatabase("mobileLab4",MODE_PRIVATE,null);
    }

    public void register(View view) {
        this.user_name = name.getText().toString();
        this.password = passwordT.getText().toString();
        String rePass = passwordRe.getText().toString();
        if (!password.equals(rePass)) {
            login_info.setText("Нууц үг таарахгүй байна.");
            login_info.setTextColor(Color.RED);
            return;
        }
        Log.i("Lab4 ","Burtgel hiigdeh gej bna. "+ user_name + " " + password);
        try {
            database.execSQL("CREATE TABLE IF NOT EXISTS UserInfo(Username VARCHAR, Password VARCHAR, gender VARCHAR, phone VARCHAR, date DATE, age INT);");
            Cursor res = database.rawQuery("Select * from UserInfo where Username = '" + user_name + "' AND Password = '" + password + "';", null);
            if (res.getCount() >= 1) {
                login_info.setText("Бүртгэл хийгдэх боломжгүй байна.");
                login_info.setTextColor(Color.RED);
                return;
            }
            String gend = gender.getText().toString();
            String phoneNum = phone.getText().toString();
            Date birthDay = this.getDateFromDatePicker(date);
            int age1 = Integer.parseInt(age.getText().toString());
            database.execSQL("INSERT INTO UserInfo VALUES('" + user_name + "','" + password + "','"+gend+"','"+phoneNum+"','"+birthDay+"','"+age1+"');");
            Log.i("Lab4 ","Amjilttai burtgegdlee.");
            login_info.setText("Бүртгэл амжилттай хийгдлээ.");
            login_info.setTextColor(Color.GREEN);
        } catch (Exception e) {
            login_info.setText("Алдаа гарлаа.");
            login_info.setTextColor(Color.RED);
            Log.e("Lab 4", e.getMessage());
        }
    }

    public void cancel(View view) {
        finish();
    }

    public static java.util.Date getDateFromDatePicker(DatePicker datePicker){
        int day = datePicker.getDayOfMonth();
        int month = datePicker.getMonth();
        int year =  datePicker.getYear();

        Calendar calendar = Calendar.getInstance();
        calendar.set(year, month, day);

        return calendar.getTime();
    }
}