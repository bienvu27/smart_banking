package com.example.smart_banking;

import android.content.Intent;

import com.entrust.identityGuard.mobile.sdk.Identity;
import com.entrust.identityGuard.mobile.sdk.IdentityProvider;
import com.entrust.identityGuard.mobile.sdk.PlatformDelegate;

import org.tinylog.Logger;

public class AddIdentity {
    private String userName = "6935019387";
    private String passWord = "0505428340110157";
    private String DEVICE_ID = UtilJava.getDeviceId();

    public  void AddIdentityTest(String serialNumber, String activationCode){
        System.out.println(serialNumber + activationCode + DEVICE_ID);
        try {
            Identity identity = new IdentityProvider().generate(DEVICE_ID,
                    serialNumber, activationCode);
            // Store our identity so it can be accessed by other activities
            UtilJava.setIdentity(identity);
            // Determine whether the soft token identity requires a PIN to protect it.

            if (identity.isPINRequired()) {

//                // Our soft token identity requires a PIN
////                startActivity(new Intent(AddIdentity.this, EstablishPIN.class));
            } else {
//                // Go directly to showing the user the registration code.
////                startActivity(new Intent(AddIdentity.this, RegistrationCode.class));
            }

        } catch (Exception e) {
            Logger.error("Error generating identity");
            // Since we have validated beforehand, this should not happen.
//            UtilJava.showErrorDialog(AddIdentity.this, getString(R.string.error_createFailure));
        }
    }
}
