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
import com.entrust.identityGuard.mobile.sdk.exception.IdentityGuardMobileException
import org.tinylog.Logger

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
        println("extrashehe: $extras")
        onlineActivation = extras != null && extras.getBoolean("online")
        println("okela ${extras != null && extras.getBoolean("online")}")
        val intro = getString(R.string.intro_PIN, PIN_LENGTH)
        (findViewById<View>(R.id.pinIntroHideExis) as TextView).text = intro

        nextButton.setOnClickListener{
            val msg: String = pinText.text.toString()
            if(msg.trim().isNotEmpty()) {
                if (msg.trim() != sharedPin){
                    Toast.makeText(applicationContext, "Mã Pin không chính xác", Toast.LENGTH_SHORT).show()
                }else{
//                    startActivity(Intent(this@EnterPinCodeExisActivity, SecurityCode::class.java))
                    if (!intent.hasExtra(SecurityCode.IS_IDENTITY_SAVED)) {
                        Util.saveIdentityInformation(applicationContext)
                    }
                    var otp: String? = ""
                    for (i in 0 until mIdentity?.otpLength!!) {
                        otp += "0"
                    }
                    try {
                        otp = mIdentity.otp
                    } catch (e: IdentityGuardMobileException) {
                        Logger.error(e, "Failed to get the current OTP")
                    } finally {
                        println("OTPHEHE: $otp")
                        Toast.makeText(applicationContext, "Mã Pin: $otp", Toast.LENGTH_SHORT).show()
// mOTP?.text = otp //IdentityProvider.formatCode(otp, mIdentity.otpLength / 2, '-')
                    }
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
        private val mIdentity = Util.identity
    }
    }
