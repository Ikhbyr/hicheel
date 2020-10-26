package num.grapecity.lab3;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;

public class Activity3 extends AppCompatActivity {
    private Button closeBtn, okBtn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_3);
        closeBtn = findViewById(R.id.btnCancel1);
        okBtn = findViewById(R.id.btnOk1);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            Boolean value1 = extras.getBoolean("Check1");
            Boolean value2 = extras.getBoolean("Check2");
            Boolean value3 = extras.getBoolean("Check3");
            int day = extras.getInt("day");
            int months = extras.getInt("month");
            int year = extras.getInt("year");
            CheckBox checkBox1 = findViewById(R.id.checkBox1);
            CheckBox checkBox2 = findViewById(R.id.checkBox2);
            CheckBox checkBox3 = findViewById(R.id.checkBox3);
            DatePicker date = findViewById(R.id.date);
            checkBox1.setChecked(value1);
            checkBox2.setChecked(value2);
            checkBox3.setChecked(value3);
            date.init(year, months, day, null);
        }
        closeBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent();
                setResult(2, intent);
                Log.i("Activity 3: ", "Activity close");
                finish();
            }
        });
        okBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent();
                Log.i("Activity 2: ", "Activity close");
                CheckBox checkBox1 = findViewById(R.id.checkBox1);
                CheckBox checkBox2 = findViewById(R.id.checkBox2);
                CheckBox checkBox3 = findViewById(R.id.checkBox3);
                DatePicker date = findViewById(R.id.date);
                Boolean value1 = checkBox1.isChecked();
                Boolean value2 = checkBox2.isChecked();
                Boolean value3 = checkBox3.isChecked();
                int dateYear = date.getYear();
                int dateMonth = date.getMonth();
                int dateDay = date.getDayOfMonth();
                intent.putExtra("Check1", value1);
                intent.putExtra("Check2", value2);
                intent.putExtra("Check3", value3);
                intent.putExtra("year", dateYear);
                intent.putExtra("month", dateMonth);
                intent.putExtra("day", dateDay);
                setResult(1, intent);
                finish();
            }
        });
    }
}