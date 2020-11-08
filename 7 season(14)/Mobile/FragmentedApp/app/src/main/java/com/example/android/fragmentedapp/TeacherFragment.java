package com.example.android.fragmentedapp;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class TeacherFragment extends Fragment {
    MyFragmentListener myFragmentListener;
    TextView info;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_teacher, container, false);
        info = view.findViewById(R.id.info);
        info.setText(myFragmentListener.setInformation());
        return view;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        myFragmentListener = (MyFragmentListener)context;
    }
}
