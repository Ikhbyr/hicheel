package com.example.android.fragmentedapp;

public interface MyFragmentListener {
    void toNextFrag(String fname, String lname, String gender,String age, boolean type);
    String setInformation();
}
