package com.example.android.fragmentedapp;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.FrameLayout;

public class MainActivity extends AppCompatActivity implements MyFragmentListener{
    FragmentManager fragmentManager;
    FrameLayout frameLayout;
    String trans;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        fragmentManager = getSupportFragmentManager();
        frameLayout = findViewById(R.id.frag_cont);
    }

    @Override
    public void toNextFrag(String fname, String lname, String gender, String age, boolean type) {

        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        trans = "name:" +fname+ " "+ lname+" age: "+age + " gender: "+gender;
        if(type) {
            fragmentTransaction.replace(R.id.frag_cont, new StudentFragment());
        }
        else {
            fragmentTransaction.replace(R.id.frag_cont, new TeacherFragment());
        }
        fragmentTransaction.commit();

    }

    @Override
    public String setInformation() {
        return trans;
    }
}
