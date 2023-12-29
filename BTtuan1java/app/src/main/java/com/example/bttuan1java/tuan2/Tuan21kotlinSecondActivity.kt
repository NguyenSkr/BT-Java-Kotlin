package com.example.bttuan1java.tuan2

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.TextView
import com.example.bttuan1java.R

class Tuan21kotlinSecondActivity : AppCompatActivity() {
    var tv1:TextView? = null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_tuan21kotlin_second)
        tv1 = findViewById(R.id.tuan22tv1)

        var i1 = intent
        val chuoi1 = i1.extras!!.getString("so1")
        val chuoi2 = i1.extras!!.getString("so2")
        val so1 = chuoi1!!.toFloat()
        val so2 = chuoi2!!.toFloat()
        val tong = so1 + so2

        tv1!!.text = tong.toString()
    }
}