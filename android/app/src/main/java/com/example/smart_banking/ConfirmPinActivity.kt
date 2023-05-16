package com.example.smart_banking

import android.annotation.SuppressLint
import android.content.Context
import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Base64
import android.view.View
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import com.chaos.view.PinView

class ConfirmPinActivity : AppCompatActivity() {
    @SuppressLint("MissingInflatedId")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_confirm_pin)
        val bundle: Bundle? = intent.extras
        val dataPin: String? = intent.getStringExtra("pin")
        println("data: $dataPin")

        val intent = intent
        val extras = intent.extras
        onlineActivation = extras != null && extras.getBoolean("online")
        val intro = getString(R.string.intro_PIN, PIN_LENGTH)
        (findViewById<View>(R.id.pinIntroHide) as TextView).text = intro

        val pinText = findViewById<PinView>(R.id.pin_view_confirm)
        val nextButton = findViewById<Button>(R.id.nextButton)
        val text = pinText.text.toString()

        val sharedPreferences = this.getSharedPreferences("Identity", Context.MODE_PRIVATE)
        var shared = sharedPreferences.getString("Identity", null)

        nextButton.setOnClickListener{
            val msg: String = pinText.text.toString()

            if(msg.trim().isNotEmpty()) {
                if(msg != dataPin){
                    pinText.equals("")
                    Util.showErrorDialog(
                            this@ConfirmPinActivity,
                            getString(R.string.error_mismatchPIN)
                    )
//                    Toast.makeText(applicationContext, "Mã Pin không trùng nhau", Toast.LENGTH_SHORT).show()
                }else{

                    if(onlineActivation){
                        startActivity(Intent(this@ConfirmPinActivity, SecurityCode::class.java))
                    }else{
//                        Util.identity?.registrationCode
                        val sharedPreferences = this.getSharedPreferences("pinValue", Context.MODE_PRIVATE)
                        val editor = sharedPreferences.edit()
                        editor.putString("pinValue", msg)
                        editor.apply()
                        Toast.makeText(applicationContext, "hahah: $msg", Toast.LENGTH_SHORT).show()

                        Util.identity?.clearRegistrationCode()
                            startActivity(Intent(this@ConfirmPinActivity, SecurityCode::class.java))
                    }
                    finish()
                    Toast.makeText(applicationContext, "Mã Pin OKE", Toast.LENGTH_SHORT).show()

//                    val intent = Intent(this, EstablishPIN::class.java)
//                    intent.putExtra("pin", msg)
//                    startActivity(intent)
                }
            }else {
                Toast.makeText(applicationContext, "Please enter Pin Code! ", Toast.LENGTH_SHORT).show()
            }

        }
    }
    companion object {
        private var onlineActivation = false
        private const val PIN_LENGTH = 4
    }
}