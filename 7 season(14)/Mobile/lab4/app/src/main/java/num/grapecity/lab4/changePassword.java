package num.grapecity.lab4;

import androidx.appcompat.app.AppCompatActivity;

import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class changePassword extends AppCompatActivity {

    private SQLiteDatabase database;
    private String user_name, pass1, pass2, old;
    private EditText oldPass, newPass, reNewPass;
    private TextView info;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_change_password);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        database = openOrCreateDatabase("mobileLab4",MODE_PRIVATE,null);
        Bundle extras = getIntent().getExtras();
        initData(extras);
    }

    public void initData(Bundle extras) {
        oldPass = findViewById(R.id.oldPassword);
        newPass = findViewById(R.id.newPassword);
        reNewPass = findViewById(R.id.reNewPassword);
        info = findViewById(R.id.info_login);
        if (extras != null) {
            old = extras.getString("pass");
            user_name = extras.getString("name");
        }
    }

    public void changePass(View view) {
        pass1 = newPass.getText().toString();
        pass2 = reNewPass.getText().toString();
        if(pass1.equals(pass2) && old.equals(oldPass.getText().toString())){
            try {
                String sql = "UPDATE UserInfo " +
                        "SET password = '" + pass1 +
                        "' WHERE Username = '" + user_name + "' AND Password = '" + oldPass.getText().toString() + "';";
                database.execSQL(sql);
                Log.i("Lab 4", sql);
                info.setText("Амжилттай.");
                old = pass1;
                info.setTextColor(Color.GREEN);
            } catch (Exception e) {
                Log.e("Lab 4", e.getMessage());
            }
        } else {
            info.setText("Нууц үг таарахгүй байна.");
            info.setTextColor(Color.RED);
        }
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