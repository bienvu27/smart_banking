package com.example.smart_banking

import CreateIdentity
import android.annotation.SuppressLint
import android.content.Context
import android.content.Intent
import android.telephony.TelephonyManager
import android.view.View
import android.widget.TextView
import android.widget.Toast
import androidx.annotation.NonNull
import com.entrust.identityGuard.mobile.sdk.Identity
import com.entrust.identityGuard.mobile.sdk.IdentityProvider
import com.entrust.identityGuard.mobile.sdk.PlatformDelegate
import com.entrust.identityGuard.mobile.sdk.exception.IdentityGuardMobileException
import com.entrust.identityGuard.mobile.sdk.tokenproviders.ThirdPartyTokenManagerFactory
import com.example.smart_banking.Util.deviceId
import com.example.smart_banking.Util.extractIdentityInformation
import com.example.smart_banking.Util.showErrorDialog
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.tinylog.Logger


class MainActivity : FlutterActivity() {
    private val CHANNEL = "entrust.sdk.dev/flutter"
    private var data: String? = "";
    private var checkPin: Boolean = false;
    private var createPin: Boolean = false;


    @SuppressLint("MissingInflatedId")
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        PlatformDelegate.initialize(this);
        ThirdPartyTokenManagerFactory.setContext(this);
        MethodChannel(
                flutterEngine.dartExecutor.binaryMessenger,
                CHANNEL
        ).setMethodCallHandler { call, result ->
            if (call.method == "enter_pin") {
                //Enter pin code to transfer screen
                var argEnterCode: String? = call.argument("enter_code");
                entrust(argEnterCode)
            } else if (call.method == "fill_text") {
                //get otp to flutter
                result.success(data)
            } else if (call.method == "check_pin") {
                //check pin code exist (true <-> false)
                result.success(checkPin)
            } else if (call.method == "create_pin") {
                //create pin code
                var pinCode: String? = call.argument("create_pin");
                var confirmCode: String? = call.argument("confirm_pin");
                createPin(pinCode, confirmCode);
                result.success(createPin)
            } else if (call.method == "check_exist_pin") {
                //check pin code exist of sharedPrefernces
                val sharedPreferences = this.getSharedPreferences("pinValue", Context.MODE_PRIVATE)
                var pinCodeNative: String? = sharedPreferences.getString("pinValue", null)
                result.success(pinCodeNative)
            }
        }

    }

    private fun createPin(pinCode: String?, confirmPin: String?) {
        try {
            val identity: Identity =
                    IdentityProvider.generate(
                            null,
                            "6935019387", "0505428340110157"
                    )

            println(identity)
            Util.identity = identity
            if (identity.isPINRequired) {
                val sharedPreferences = this.getSharedPreferences("pinValue", Context.MODE_PRIVATE)
                val editor = sharedPreferences.edit()
                editor.putString("pinValue", confirmPin)
                editor.apply()
                Util.identity?.clearRegistrationCode()
                Util.saveIdentityInformation(applicationContext)
                checkPin = true
                generateOTP()
            }

        } catch (e: Exception) {
            Logger.error("Error generating identity", "")
            showErrorDialog(
                    this@MainActivity,
                    getString(R.string.error_createFailure))
        }
    }

    private fun entrust(code: String?) {
        if (checkIdentityExistOrNot(this@MainActivity)) {
            if (code != null) {
                enterPinCode(code)
            }

        }
    }

    private fun enterPinCode(pinText: String) {
        val sharedPreferences = this.getSharedPreferences("pinValue", Context.MODE_PRIVATE)
        var sharedPin = sharedPreferences.getString("pinValue", null)
        val msg: String = pinText //.text.toString()
        if (msg.trim().isNotEmpty()) {
            if (msg.trim() != sharedPin) {
                checkPin = false
            } else {
                checkPin = true
                if (!intent.hasExtra(SecurityCode.IS_IDENTITY_SAVED)) {
                    Util.saveIdentityInformation(applicationContext)
                }
                generateOTP()
            }
        }
    }

    private fun generateOTP() {
        var otp: String? = ""
        for (i in 0 until Util.identity?.otpLength!!) {
            otp += "0"
        }
        try {
            otp = Util.identity?.otp
        } catch (e: IdentityGuardMobileException) {
            Logger.error(e, "Failed to get the current OTP")
        } finally {

            println("OTPHEHE: $otp")
            data = otp
            println("datahehe: $data")
        }
    }

    companion object {
        private val DEVICE_ID = deviceId
        private const val SCAN_REQUEST_CODE = 0
        private const val SCAN_MODE = "SCAN_MODE"
        private const val QR_CODE_MODE = "QR_CODE_MODE"
        private const val SCAN_INTENT = "com.google.zxing.client.android.SCAN"
        private const val PLAY_STORE_URI = "market://details?id=com.google.zxing.client.android"
        private const val SCAN_RESULT = "SCAN_RESULT"
        private const val SCAN_RESULT_FORMAT = "SCAN_RESULT_FORMAT"
        private const val QR_CODE_FORMAT = "QR_CODE"
        private var onlineActivation = false
        private const val PIN_LENGTH = 4
        private val mIdentity = Util.identity
        private var onlineCode = true
    }

    private fun checkIdentityExistOrNot(context: Context): Boolean {
        return extractIdentityInformation(context)
    }


}

