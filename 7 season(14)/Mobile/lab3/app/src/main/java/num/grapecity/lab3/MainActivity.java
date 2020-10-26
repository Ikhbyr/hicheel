package num.grapecity.lab3;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private String name;
    private String age;
    private Boolean check1, check2, check3;
    private int dateD, dateY, dateM, hour, min, gender;
    MainActivity(){
        this.hour = -1;
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    // Activity 2
    public void switchActivity(View view) {
        switchActivityTo2("Exp");
    }
    public void switchActivityTo2(String type) {
        Log.i("Switch: ", "Switch to 2");
        if (type.equals("Exp")) {
            Intent i1 = new Intent(this, Activity2.class);
            if (name != null) {
                i1.putExtra("Name", name);
                i1.putExtra("Age", age);
            }
            startActivityForResult(i1, 2);
        } else {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.act2");
            if (name != null) {
                intent.putExtra("Name", name);
                intent.putExtra("Age", age);
            }
            startActivityForResult(intent, 2);
        }
    }
    // Activity 3
    public void switchActivity3(View view) {
        switchActivityTo3("Exp");
    }
    public void switchActivityTo3(String type) {
        Log.i("Switch: ", "Switch to 3");
        if (type.equals("Exp")) {
            Intent i1 = new Intent(this, Activity3.class);
            if (check1 != null) {
                i1.putExtra("Check1", check1);
                i1.putExtra("Check2", check2);
                i1.putExtra("Check3", check3);
                i1.putExtra("year", dateY);
                i1.putExtra("day", dateD);
                i1.putExtra("month", dateM);
            }
            startActivityForResult(i1, 3);
        } else {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.act3");
            if (check1 != null) {
                intent.putExtra("Check1", check1);
                intent.putExtra("Check2", check2);
                intent.putExtra("Check3", check3);
                intent.putExtra("year", dateY);
                intent.putExtra("day", dateD);
                intent.putExtra("month", dateM);
            }
            startActivityForResult(intent, 3);
        }
    }
    // Activity 4
    public void switchActivity4(View view) {
        switchActivityTo4("Exp");
    }
    public void switchActivityTo4(String type) {
        Log.i("Switch: ", "Switch to 4");
        if (type.equals("Exp")) {
            Intent i1 = new Intent(this, Activity4.class);
            if (hour != -1) {
                i1.putExtra("hour", hour);
                i1.putExtra("min", min);
                i1.putExtra("gender", gender);
            }
            startActivityForResult(i1, 4);
        } else {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.act4");
            if (hour != -1) {
                intent.putExtra("hour", hour);
                intent.putExtra("min", min);
                intent.putExtra("gender", gender);
            }
            startActivityForResult(intent, 4);
        }
    }
    // Activity 5
    public void switchActivity5(View view) {
        switchActivityTo5("Exp");
    }
    public void switchActivityTo5(String type) {
        Log.i("Switch: ", "Switch to 5");
        if (type.equals("Exp")) {
            Intent intent = new Intent(this, Activity5.class);

            startActivityForResult(intent, 5);
        } else {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.act5");

            startActivityForResult(intent, 5);
        }
    }

    @SuppressLint("SetTextI18n")
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data)
    {
        super.onActivityResult(requestCode, resultCode, data);
        // check if the request code is same as what is passed  here it is 2
        if(requestCode==2)
        {
            if (resultCode == 2) {
                Log.i("Result AC2: ", "CLose");
            } else {
                name = data.getStringExtra("Name");
                age = data.getStringExtra("Age");
                TextView text = findViewById(R.id.text);
                text.setText("Name is: "+name+" Age is: "+age);
                Log.i("Result AC2: ", name + " " + age);
            }
        } else if (requestCode == 3){
            if (resultCode != 1) {
                Log.i("Result AC3: ", "CLose");
            } else {
                check1 = data.getBooleanExtra("Check1", false);
                check2 = data.getBooleanExtra("Check2", false);
                check3 = data.getBooleanExtra("Check3", false);
                dateY = data.getIntExtra("year", 2020);
                dateM = data.getIntExtra("month", 12);
                dateD = data.getIntExtra("day", 31);
                Log.i("Result AC2: ", check1 + " " + check2 + " " +check3);
                Log.i("Date: ", dateY + " " + dateM + " " +dateD);
            }
        } else if (requestCode == 4){
            if (resultCode != 1) {
                Log.i("Result AC4: ", "CLose");
            } else {
                hour = data.getIntExtra("hour", 0);
                min = data.getIntExtra("min", 0);
                gender = data.getIntExtra("gender", 0);
                Log.i("Result AC2: ", hour + " " + min + " " +gender);
            }
        } else if (requestCode == 5){
            Log.i("Activity 5: ", "Close");
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.intentlist, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle item selection
        switch (item.getItemId()) {
            case R.id.activity2:
                switchActivityTo2("Imp");
                return true;
            case R.id.activity3:
                switchActivityTo3("Imp");
                return true;
            case R.id.activity4:
                switchActivityTo4("Imp");
                return true;
            case R.id.activity5:
                switchActivityTo5("Imp");
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}