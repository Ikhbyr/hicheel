package num.grapecity.lab3;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class Activity2 extends AppCompatActivity {
    Button btnCnl, btnOk;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_2);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            String value = extras.getString("Name");
            String agePass = extras.getString("Age");
            EditText age = findViewById(R.id.age);
            EditText name = findViewById(R.id.username);
            age.setText(agePass);
            name.setText(value);
        }
        btnCnl = findViewById(R.id.btnCancel);
        btnOk = findViewById(R.id.btnOk);
        btnOk.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                EditText name = findViewById(R.id.username);
                EditText age = findViewById(R.id.age);
                Intent intent = new Intent();
                intent.putExtra("Name", name.getText().toString());
                intent.putExtra("Age", age.getText().toString());
                setResult(1, intent);
                Log.i("Activity 2: ", "Activity close");
                finish();
            }
        });
        btnCnl.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent();
                setResult(2, intent);
                Log.i("Activity 2: ", "Activity close");
                finish();
            }
        });
    }
}