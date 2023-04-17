package com.example.smart_banking

import android.content.Intent
import androidx.annotation.NonNull
import com.entrust.identityGuard.mobile.sdk.Identity
import com.entrust.identityGuard.mobile.sdk.IdentityProvider
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val CHANNEL = "entrust.sdk/flutter"
    private var userName: String = "";
    private var passWord: String = "";
    private val DEVICE_ID: String = Util().getDeviceId()


    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            print("haha")
           if(call.method == "test"){
               var identity: Identity = IdentityProvider.generate(
                   DEVICE_ID,
                   userName, passWord
               )
               // Store our identity so it can be accessed by other activities
               Util().setIdentity(identity)

               // Determine whether the soft token identity requires a PIN to protect it.
               if (identity.isPINRequired) {
                   // Our soft token identity requires a PIN
//                startActivity(Intent(this@AddIdentity, EstablishPIN::class.java))
                   print("isPINRequired")
               } else {
                   // Go directly to showing the user the registration code.
//                startActivity(Intent(this@AddIdentity, RegistrationCode::class.java))\
                   print("!isPINRequired")
               }
               finish()
           }
        }
    }

}

