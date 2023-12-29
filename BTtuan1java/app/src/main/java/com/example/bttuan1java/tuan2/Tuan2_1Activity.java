package com.example.bttuan1java.tuan2;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

import com.example.bttuan1java.R;

public class Tuan2_1Activity extends AppCompatActivity {
    TextView tv1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tuan21);
        tv1 = findViewById(R.id.tuan21tv1);
        Intent i1 = getIntent();
        String chuoi1 = i1.getExtras().getString("so1");
        String chuoi2 = i1.getExtras().getString("so2");

        float so1 = Float.parseFloat(chuoi1);
        float so2 = Float.parseFloat((chuoi2));
        float tong = so1 + so2;

        tv1.setText(String.valueOf(tong));

    }
}