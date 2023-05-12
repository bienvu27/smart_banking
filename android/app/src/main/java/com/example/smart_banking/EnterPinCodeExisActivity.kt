package com.example.smart_banking

import android.annotation.SuppressLint
import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.chaos.view.PinView
import com.entrust.identityGuard.mobile.sdk.Identity

class EnterPinCodeExisActivity : AppCompatActivity() {
    @SuppressLint("MissingInflatedId")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_enter_pin_code_exis)
        val pinText = findViewById<PinView>(R.id.pin_view_exis)
        val nextButton = findViewById<Button>(R.id.nextButton)
        val text = pinText.text.toString()
        val sharedPreferences = this.getSharedPreferences("pinValue", Context.MODE_PRIVATE)
        var sharedPin = sharedPreferences.getString("pinValue", null)


        val intent = intent
        val extras = intent.extras
        onlineActivation = extras != null && extras.getBoolean("online")
        val intro = getString(R.string.intro_PIN, PIN_LENGTH)
        (findViewById<View>(R.id.pinIntroHideExis) as TextView).text = intro

        nextButton.setOnClickListener{
            val msg: String = pinText.text.toString()
            if(msg.trim().isNotEmpty()) {
//                Util.saveIdentityInformation2(applicationContext)
//                Toast.makeText(applicationContext, "$shared", Toast.LENGTH_SHORT).show()
//                identity?.let { it1 -> validateUnlockResponse(it1, msg, "") }
//                val intent = Intent(this, SecurityCode::class.java)
//                intent.putExtra("pin", msg)
//                startActivity(intent)
                if (msg.trim() != sharedPin){
                    Toast.makeText(applicationContext, "Mã Pin không chính xác", Toast.LENGTH_SHORT).show()
                }else{
                    startActivity(Intent(this@EnterPinCodeExisActivity, SecurityCode::class.java))
                }
            }else {
                Toast.makeText(applicationContext, "Please enter Pin Code! ", Toast.LENGTH_SHORT).show()
            }


        }

    }
    companion object {
        private var onlineActivation = false
        private const val PIN_LENGTH = 4
        var identity: Identity? = null
    }
    }
