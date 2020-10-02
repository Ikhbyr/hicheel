package com.example.lab2;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.nfc.Tag;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private static final String TAG = MainActivity.class.getSimpleName();
    EditText etValueA, etValueB, etResult;
        Button btAdd, btSub, btMulti, btDivide;

        double num1, num2, num3;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        etValueA = (EditText)findViewById(R.id.etValueA);
        etValueB = (EditText)findViewById(R.id.etValueB);
        etResult = (EditText)findViewById(R.id.etResult);

        btAdd = (Button)findViewById(R.id.btAdd);
        btSub = (Button)findViewById(R.id.btSub);
        btMulti = (Button)findViewById(R.id.btMulti);
        btDivide = (Button)findViewById(R.id.btDivide);

        btAdd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                num1 = Double.parseDouble(etValueA.getText().toString());
                System.out.println("TAG = " + TAG);
                Log.d(TAG, "ValueA = " + num1);
                num2 = Double.parseDouble(etValueB.getText().toString());
                System.out.println("TAG = " + TAG);
                Log.d(TAG, "ValueB = " + num2);
                num3 = num1 + num2;
                etResult.setText(String.valueOf(num3));
                System.out.println("TAG = " + TAG);
                Log.d(TAG, "result = " + num3);
            }
        });
        btSub.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                num1 = Double.parseDouble(etValueA.getText().toString());
                Log.d(TAG, "ValueA = " + num1);
                num2 = Double.parseDouble(etValueB.getText().toString());
                Log.d(TAG, "ValueB = " + num2);
                num3 = num1 - num2;
                etResult.setText(String.valueOf(num3));
                Log.d(TAG, "result = " + num3);
            }
        });
        btMulti.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                num1 = Double.parseDouble(etValueA.getText().toString());
                Log.d(TAG, "ValueA = " + num1);
                num2 = Double.parseDouble(etValueB.getText().toString());
                Log.d(TAG, "ValueB = " + num2);
                num3 = num1 * num2;
                etResult.setText(String.valueOf(num3));
                Log.d(TAG, "result = " + num3);
            }
        });
        btDivide.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                num1 = Double.parseDouble(etValueA.getText().toString());
                Log.d(TAG, "ValueA = " + num1);
                num2 = Double.parseDouble(etValueB.getText().toString());
                Log.d(TAG, "ValueB = " + num2);
                num3 = num1 / num2;
                etResult.setText(String.valueOf(num3));
                Log.d(TAG, "result = " + num3);
            }
        });
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.calculate,menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        int id = item.getItemId();
        if(id==R.id.add){
            num1 = Double.parseDouble(etValueA.getText().toString());
            Log.d(TAG, "ValueA = " + num1);
            num2 = Double.parseDouble(etValueB.getText().toString());
            Log.d(TAG, "ValueB = " + num2);
            num3 = num1 + num2;
            etResult.setText(String.valueOf(num3));
            Log.d(TAG, "result = " + num3);
        }
        if(id==R.id.sub){
            num1 = Double.parseDouble(etValueA.getText().toString());
            Log.d(TAG, "ValueA = " + num1);
            num2 = Double.parseDouble(etValueB.getText().toString());
            Log.d(TAG, "ValueB = " + num2);
            num3 = num1 - num2;
            etResult.setText(String.valueOf(num3));
            Log.d(TAG, "result = " + num3);
        }
        if(id==R.id.multi){
            num1 = Double.parseDouble(etValueA.getText().toString());
            Log.d(TAG, "ValueA = " + num1);
            num2 = Double.parseDouble(etValueB.getText().toString());
            Log.d(TAG, "ValueB = " + num2);
            num3 = num1 * num2;
            etResult.setText(String.valueOf(num3));
            Log.d(TAG, "result = " + num3);
        }
        if(id==R.id.divide){
            num1 = Double.parseDouble(etValueA.getText().toString());
            Log.d(TAG, "ValueA = " + num1);
            num2 = Double.parseDouble(etValueB.getText().toString());
            Log.d(TAG, "ValueB = " + num2);
            num3 = num1 / num2;
            etResult.setText(String.valueOf(num3));
            Log.d(TAG, "result = " + num3);
        }
        return super.onOptionsItemSelected(item);
    }
}
