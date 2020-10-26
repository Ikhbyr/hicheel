package num.grapecity.lab4;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Objects;

public class MainActivity extends AppCompatActivity {

    private EditText name, pass;
    private TextView login_info;
    private String user_name, password;
    private SQLiteDatabase database;
    public static final String MyPREFERENCES = "MyPrefs" ;
    public static final String Name = "nameKey";
    SharedPreferences sharedpreferences;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        name = findViewById(R.id.user_name);
        pass = findViewById(R.id.password);
        login_info = findViewById(R.id.info_login);
        database = openOrCreateDatabase("mobileLab4",MODE_PRIVATE,null);
        sharedpreferences = getSharedPreferences(MyPREFERENCES, Context.MODE_PRIVATE);
        this.user_name = sharedpreferences.getString(Name, "");
        name.setText(user_name);
        Log.i("Lab4","Хадгалагдсан нэр "+user_name);
//        database.execSQL("DROP TABLE IF EXISTS UserInfo");
    }

    public void login(View view) {
        this.user_name = name.getText().toString();
        this.password = pass.getText().toString();
        try {
            @SuppressLint("Recycle") Cursor res = database.rawQuery("Select * from UserInfo where Username = '" + user_name + "' AND Password = '" + password + "';", null);
            Log.i("Lab4 ", "Login name: " + user_name + " " + res.getCount());
            if (res.getCount() == 1) {
                if  (res.moveToFirst()) {
                    Log.i("Lab4", "Amjilttai newterlee. ");
                    String gender = res.getString(res.getColumnIndex("gender"));
                    String phone = res.getString(res.getColumnIndex("phone"));
                    String date = res.getString(res.getColumnIndex("date"));
                    int age = res.getInt(res.getColumnIndex("age"));
                    login_info.setText("Амжилттай.");
                    login_info.setTextColor(Color.GREEN);
                    SharedPreferences.Editor editor = sharedpreferences.edit();
                    editor.putString(Name, user_name);
                    editor.apply();
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.UserInfo");
                    intent.putExtra("name", user_name);
                    intent.putExtra("gender", gender);
                    intent.putExtra("phone", phone);
                    intent.putExtra("date", date);
                    intent.putExtra("age", age);
                    intent.putExtra("pass", password);
                    startActivity(intent);
                }
            } else {
                Log.i("Lab4", "Newtreh ner nuuts ug buruu bna");
                login_info.setText("Нэвтрэх нэр эсвэл нууц үг буруу байна.");
                login_info.setTextColor(Color.RED);
            }
        } catch (Exception e) {
            Log.e("Lab 4", Objects.requireNonNull(e.getMessage()));
        }
    }

    public void register(View view) {
        Log.i("Lab4 ","Burtgel hiigdeh gej bna.");
        Intent intent = new Intent(this, SignUp.class);
        this.user_name = name.getText().toString();
        this.password = pass.getText().toString();
        intent.putExtra("name", user_name);
        intent.putExtra("password", password);
        startActivity(intent);
    }
}