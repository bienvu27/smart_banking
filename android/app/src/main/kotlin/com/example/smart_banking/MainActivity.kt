package com.example.smart_banking

import CreateIdentity
import android.annotation.SuppressLint
import android.content.Context
import android.content.Intent
import android.telephony.TelephonyManager
import android.widget.Toast
import androidx.annotation.NonNull
import com.entrust.identityGuard.mobile.sdk.Identity
import com.entrust.identityGuard.mobile.sdk.IdentityProvider
import com.entrust.identityGuard.mobile.sdk.PlatformDelegate
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

    @SuppressLint("MissingInflatedId")
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        PlatformDelegate.initialize(this);
        ThirdPartyTokenManagerFactory.setContext(this);
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            if (call.method == "test") {

                if (checkIdentityExistOrNot(this@MainActivity)) {
//                    val intent = Intent(this@MainActivity, SecurityCode::class.java)
                    val intent = Intent(this@MainActivity, EnterPinCodeExisActivity::class.java)
                    intent.putExtra(SecurityCode.IS_IDENTITY_SAVED, true)
                    startActivity(intent)
                    finish()
                }else{
                    try {
//                    val createIdentity: Identity? = CreateIdentity().createNewSoftTokenIdentityOnline(
//                        "6042283652",
//                        "0777507351979575",
//                        "https://devtoken.vrbank.com.vn/igst/"
//                    )
//                    println("vo day ne: $createIdentity")


                        val identity: Identity =
                                IdentityProvider.generate(
                                        null,
                                        "6935019387", "0505428340110157"
                                )

                        println(identity)
                        // Store our identity so it can be accessed by other activities
                        Util.identity = identity
                        // Determine whether the soft token identity requires a PIN to protect it.
                        if (identity.isPINRequired) {
                            // Our soft token identity requires a PIN
//                            startActivity(Intent(this@MainActivity, EstablishPIN::class.java))
                        startActivity(Intent(this@MainActivity, EnterPinCodeActivity::class.java))

                        } else {
                            // Go directly to showing the user the registration code.
                            startActivity(Intent(this@MainActivity, RegistrationCode::class.java))
                        }
                        finish()
                    } catch (e: Exception) {
                        Logger.error("Error generating identity", "")
                        // Since we have validated beforehand, this should not happen.
                        showErrorDialog(
                                this@MainActivity,
                                getString(R.string.error_createFailure)
                        )
                    }
                }




            }
        }

    }

    companion object {
        // Used when registering for transaction verification.  This can be null
        // if transaction verification is not required.
        private val DEVICE_ID = deviceId
        private const val SCAN_REQUEST_CODE = 0
        private const val SCAN_MODE = "SCAN_MODE"
        private const val QR_CODE_MODE = "QR_CODE_MODE"
        private const val SCAN_INTENT = "com.google.zxing.client.android.SCAN"
        private const val PLAY_STORE_URI = "market://details?id=com.google.zxing.client.android"
        private const val SCAN_RESULT = "SCAN_RESULT"
        private const val SCAN_RESULT_FORMAT = "SCAN_RESULT_FORMAT"
        private const val QR_CODE_FORMAT = "QR_CODE"
    }
    private fun checkIdentityExistOrNot(context: Context): Boolean {
        return extractIdentityInformation(context)
    }}

