package com.example.btjava_kotlin.tuan4

import android.annotation.SuppressLint
import android.content.Context
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import com.example.btjava_kotlin.R

class Tuan4kotlinMainActivity : AppCompatActivity() {
    var btn:Button? = null
    var tv:TextView? = null
    var context:Context = this
    @SuppressLint("MissingInflatedId")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_tuan4kotlin_main)

        btn = findViewById(R.id.tuan4btn2)
        tv = findViewById(R.id.tuan4tv2)
        val fn = VolleyKotlinFn()
        btn!!.setOnClickListener{
            fn.getJSONArrayObjects(context,tv!!)
        }
    }
}