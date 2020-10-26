package num.grapecity.lab5;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import java.util.Objects;

public class Lab4_contentPro extends AppCompatActivity {
    private EditText name, pass;
    private TextView login_info;
    private String user_name, password;
    public static final String MyPREFERENCES = "MyPrefs" ;
    public static final String Name = "nameKey";
    private static final String COL1 = "Username";
    private static final String COL2 = "Password";
    private static final String COL3 = "Age";
    private static final String COL4 = "Gender";
    private static final String COL5 = "Phone";
    private static final String COL6 = "Date";
    SharedPreferences sharedpreferences;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lab4_content_pro);
        name = findViewById(R.id.user_name);
        pass = findViewById(R.id.password);
        login_info = findViewById(R.id.info_login);
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
            Cursor res = getContentResolver().query(Uri.parse("content://num.grapecity.provider/UserInfo"), new String[]{
                    COL1, COL2, COL3, COL4, COL5, COL6}, "username = ?", new String[]{user_name}, null);
            Log.i("Lab5 ", "Login name: " + user_name);
            String pass="", u_name = "";
            assert res != null;
            if  (res.moveToFirst()) {
                    Log.i("Lab4", "Amjilttai newterlee. ");
                    String gender = res.getString(res.getColumnIndex("gender"));
                    String phone = res.getString(res.getColumnIndex("phone"));
                    String date = res.getString(res.getColumnIndex("date"));
                    pass = res.getString(res.getColumnIndex("Password"));
                    u_name = res.getString(res.getColumnIndex("username"));
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
            if(!pass.equals(password) || !u_name.equals(password)) {
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