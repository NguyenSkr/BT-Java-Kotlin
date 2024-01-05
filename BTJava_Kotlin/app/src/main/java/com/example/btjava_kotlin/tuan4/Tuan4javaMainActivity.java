package com.example.btjava_kotlin.tuan4;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.example.btjava_kotlin.R;

public class Tuan4javaMainActivity extends AppCompatActivity {
    Button btngetdata;
    TextView tvkq;
    Context context=this;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tuan4java_main);
        Tuan4VolleyFn volleyFn = new Tuan4VolleyFn();
        tvkq = findViewById(R.id.tuan4tv1);
        btngetdata = findViewById(R.id.tuan4btn1);
        btngetdata.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                volleyFn.getJsonArrayOfObject(context,tvkq);
            }
        });

    }
}