package com.example.bttuan1java.tuan2

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import com.example.bttuan1java.R

class Tuan21kotlinMainActivity : AppCompatActivity() {
    var txt1:EditText? = null
    var txt2:EditText? = null
    var btn1:Button? = null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_tuan21kotlin_main)
        txt1 = findViewById(R.id.tuan22txt1)
        txt2 = findViewById(R.id.tuan22txt2)
        btn1 = findViewById(R.id.tuan22btn1)

        btn1!!.setOnClickListener(View.OnClickListener {
            var i = Intent(this@Tuan21kotlinMainActivity,Tuan21kotlinSecondActivity::class.java)
            i.putExtra("so1",txt1!!.text.toString())
            i.putExtra("so2",txt2!!.text.toString())
            startActivity(i)
        })
    }
}