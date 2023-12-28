package com.example.bttuan1java.tuan1;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.example.bttuan1java.R;

public class Tuan1MainActivity extends AppCompatActivity {
    EditText txt1,txt2;
    Button btn1;
    TextView tv1;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tuan1_main);

        txt1 = findViewById(R.id.demo1txt1);
        txt2 = findViewById(R.id.demo1txt2);
        btn1 = findViewById(R.id.demo1btn1);
        tv1 = findViewById(R.id.demo1tv1);
        btn1.setOnClickListener(v->{
            tinhTong();
        });
    }
    private void tinhTong(){
        String str1 = txt1.getText().toString();
        float so1 = Float.parseFloat(str1);
        String str2 = txt2.getText().toString();
        float so2 = Float.parseFloat(str2);
        float tong = so1 + so2;

        tv1.setText(String.valueOf(tong));
    }
}