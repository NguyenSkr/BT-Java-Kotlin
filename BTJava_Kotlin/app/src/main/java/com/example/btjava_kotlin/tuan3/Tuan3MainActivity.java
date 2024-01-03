package com.example.btjava_kotlin.tuan3;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ListView;

import com.example.btjava_kotlin.R;

import java.util.ArrayList;

public class Tuan3MainActivity extends AppCompatActivity {

    ListView lv;
    tuan3Adapter adapter;
    ArrayList<tuan3contact> ls = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tuan3_main);

        lv = findViewById(R.id.tuan3lv1);
        ls.add(new tuan3contact("Nguyen Van a","18",R.drawable.android));
        ls.add(new tuan3contact("Tran Van b","19",R.drawable.apple));
        ls.add(new tuan3contact("Nguyen van c","20",R.drawable.dell));

        adapter = new tuan3Adapter(ls,this);
        lv.setAdapter(adapter);

    }
}