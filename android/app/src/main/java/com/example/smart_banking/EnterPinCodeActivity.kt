package com.example.smart_banking

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.Toast
import com.chaos.view.PinView

class EnterPinCodeActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_enter_pin_code)
        val pinText = findViewById<PinView>(R.id.pin_view)
        val nextButton = findViewById<Button>(R.id.nextButton)
        val text = pinText.text.toString()
        nextButton.setOnClickListener{
            val msg: String = pinText.text.toString()
            if(msg.trim().isNotEmpty()) {
                val intent = Intent(this, ConfirmPinActivity::class.java)
                intent.putExtra("pin", msg)
                startActivity(intent)
            }else {
                Toast.makeText(applicationContext, "Please enter Pin Code! ", Toast.LENGTH_SHORT).show()
            }


        }

    }
}