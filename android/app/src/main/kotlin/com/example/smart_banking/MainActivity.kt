package com.example.smart_banking

import android.content.Intent
import android.widget.Toast
import androidx.annotation.NonNull
import com.entrust.identityGuard.mobile.sdk.Identity
import com.entrust.identityGuard.mobile.sdk.IdentityProvider
import com.entrust.identityGuard.mobile.sdk.PlatformDelegate
import com.entrust.identityGuard.mobile.sdk.tokenproviders.ThirdPartyTokenManagerFactory
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val CHANNEL = "entrust.sdk.dev/flutter"
    private var userName: String = "6935019387";
    private var passWord: String = "0505428340110157";
    private val DEVICE_ID: String = Util().getDeviceId()


    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        PlatformDelegate.initialize(this);
        ThirdPartyTokenManagerFactory.setContext(this);
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
           if(call.method == "test"){
//               Toast.makeText(this, "hahaha", Toast.LENGTH_SHORT).show()
               AddIdentity().AddIdentityTest(userName, passWord)
               /////////////////////////////////////////
               var identity: Identity = IdentityProvider.generate(
                   DEVICE_ID,
                   userName, passWord
               )
//               Toast.makeText(this, "$identity", Toast.LENGTH_SHORT).show()
//               // Store our identity so it can be accessed by other activities
               Util().setIdentity(identity)
//
//               // Determine whether the soft token identity requires a PIN to protect it.
               if (identity.isPINRequired) {
                   Toast.makeText(this, "identity.isPINRequired", Toast.LENGTH_SHORT).show()
//                   // Our soft token identity requires a PIN
////                startActivity(Intent(this@AddIdentity, EstablishPIN::class.java))
//                   print("isPINRequired")
               } else {
//                   // Go directly to showing the user the registration code.
                   Toast.makeText(this, "--identity.isPINRequired", Toast.LENGTH_SHORT).show()
                   print("!isPINRequired")
               }
//               finish()
           }
        }
    }

}

