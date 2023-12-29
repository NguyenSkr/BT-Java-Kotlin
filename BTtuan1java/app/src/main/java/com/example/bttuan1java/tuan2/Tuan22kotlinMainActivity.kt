package com.example.bttuan1java.tuan2

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ArrayAdapter
import android.widget.ListView
import com.example.bttuan1java.R

class Tuan22kotlinMainActivity : AppCompatActivity() {
    var lv: ListView? = null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_tuan22kotlin_main)
        lv = findViewById(R.id.tuan222lv1)
        val arr = arrayOf("item1","item2","item3","item4","item5","item6")
        val ad = ArrayAdapter(this,android.R.layout.simple_list_item_1,arr)

        lv!!.adapter = ad
    }
}