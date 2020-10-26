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
import android.widget.RadioButton;
import android.widget.TimePicker;

public class Activity4 extends AppCompatActivity {
    Button okBtn, closeBtn;
    int gender = 1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_4);
        closeBtn = findViewById(R.id.btnCancel4);
        okBtn = findViewById(R.id.btnOk4);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            Boolean value1 = extras.getBoolean("Check1");
            gender = extras.getInt("gender");
            int hour = extras.getInt("hour");
            int min = extras.getInt("min");
            RadioButton radioButton1 = findViewById(R.id.radioButton1);
            RadioButton radioButton2 = findViewById(R.id.radioButton2);
            TimePicker timePicker = findViewById(R.id.time);
            timePicker.setCurrentHour(hour);
            timePicker.setCurrentMinute(min);
            if(gender == 2) {
                radioButton2.setChecked(true);
            } else {
                radioButton1.setChecked(true);
            }
        }
        closeBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent();
                setResult(2, intent);
                Log.i("Activity 4: ", "Activity close");
                finish();
            }
        });
        okBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                TimePicker timePicker = findViewById(R.id.time);
                int hour = timePicker.getCurrentHour();
                int min = timePicker.getCurrentMinute();
                Intent intent = new Intent();
                setResult(1, intent);
                intent.putExtra("hour", hour);
                intent.putExtra("min", min);
                intent.putExtra("gender", gender);
                Log.i("Activity 4: ", "Activity close");
                finish();
            }
        });
    }
    public void onRadioButtonClicked(View view) {
        // Is the button now checked?
        boolean checked = ((RadioButton) view).isChecked();

        // Check which radio button was clicked
        switch(view.getId()) {
            case R.id.radioButton1:
                if (checked)
                    gender = 1;
                    break;
            case R.id.radioButton2:
                if (checked)
                    gender = 2;
                    break;
        }
    }
}