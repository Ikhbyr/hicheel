package com.example.android.fragmentedapp;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;

public class MyFragment extends Fragment {

    EditText fname, lname;
    EditText age;
    RadioButton m, f;
    RadioButton teacher, student;
    Button next;
    MyFragmentListener myFragmentListener;


    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        myFragmentListener = (MyFragmentListener) context;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_my, container, false);
        fname = view.findViewById(R.id.fname);
        lname = view.findViewById(R.id.lname);
        age = view.findViewById(R.id.age);
        m = view.findViewById(R.id.maleRb);
        f = view.findViewById(R.id.femaleRb);
        teacher = view.findViewById(R.id.teacherRb);
        student = view.findViewById(R.id.studRb);
        next = view.findViewById(R.id.nextBtn);
        //m.setChecked(true);
        //student.setChecked(true);
        next.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                nextFragment(v);
            }
        });
        return view;
    }
    void nextFragment(View v){
        String gend = "";
        if(m.isChecked()) gend = "male";
        if(f.isChecked()) gend = "female";
        myFragmentListener.toNextFrag(fname.getText().toString(), lname.getText().toString(), gend, age.getText().toString(), student.isChecked());
    }
}
