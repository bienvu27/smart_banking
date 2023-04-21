/**
 * Copyright (c) 2011 Entrust, Inc. All rights reserved.
 * Use is subject to the terms of the accompanying license agreement.
 * Entrust Confidential.
 */
package com.example.smart_banking;

import static android.content.Context.MODE_PRIVATE;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.util.Base64;

import com.entrust.identityGuard.mobile.sdk.Identity;
import com.entrust.identityGuard.mobile.sdk.Logger;
import com.entrust.identityGuard.mobile.sdk.PlatformDelegate;
import com.entrust.identityGuard.mobile.sdk.exception.EncryptionRequiredException;

import org.json.JSONObject;
//import org.tinylog.Logger;

import java.util.Random;

/**
 * Utility class that provides methods required by each Activity
 */
public class UtilJava {
    private static final String IDENTITY = "Identity";
    private static final String REGISTRATION_URL = "IdentityRegistrationURL";

    private static Identity identity;
    private static String address;


    /**
     * Generate and display error dialog with the given message and an OK button
     *
     * @param context context in which to display the dialog
     * @param msg     The message to display.
     * @return The dialog that was created.
     */
    static Dialog showErrorDialog(Context context, String msg) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(msg)
                .setTitle(R.string.title_error)
                .setIcon(android.R.drawable.ic_dialog_alert)
                .setCancelable(false)
                .setPositiveButton(context.getString(R.string.label_OK), new OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        // Pop down the dialog
                        dialog.cancel();
                    }
                });
        return builder.show();
    }

    /**
     * Generate and display info dialog with the given message and an OK button
     *
     * @param context context in which to display the dialog
     * @param msg     The message to display.
     * @return The dialog that was created.
     */
    static Dialog showInfoDialog(Context context, String msg) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(msg)
                .setTitle(R.string.title_error)
                .setIcon(android.R.drawable.ic_dialog_info)
                .setCancelable(false)
                .setPositiveButton(context.getString(R.string.label_OK), new OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        // Pop down the dialog
                        dialog.cancel();
                    }
                });
        return builder.show();
    }

    /**
     * Generate and display info dialog with the given message and an OK button
     *
     * @param context context in which to display the dialog
     * @param msg     The message to display.
     * @return The dialog that was created.
     */
    static Dialog showInfoDialog(Context context, String msg, OnClickListener listener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(msg)
                .setTitle(R.string.title_success)
                .setIcon(android.R.drawable.ic_dialog_info)
                .setCancelable(false)
                .setPositiveButton(context.getString(R.string.label_OK), listener);
        return builder.show();
    }

    /**
     * Generate and display a confirmation dialog with the given message and Yes/No buttons.
     *
     * @param context  Context in which to display the dialog
     * @param msg      The message to display
     * @param listener The Listener to call when either of the Yes/No buttons is invoked.
     * @return The dialog that was created
     */
    static Dialog showConfirmationDialog(Context context, String msg, OnClickListener listener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setMessage(msg)
                .setTitle(R.string.title_confirm)
                .setIcon(android.R.drawable.ic_dialog_info)
                .setPositiveButton(context.getString(R.string.label_yes), listener)
                .setNegativeButton(context.getString(R.string.label_no), listener)
                .setCancelable(false);

        return builder.show();
    }

    /**
     * Store the Identity created so it can be shared across multiple Activities.
     * Normally, this would go into some form of persistent storage, but with this
     * simple example, we just record the identity in memory.
     *
     * @param identity The Identity to store
     */
    public static void setIdentity(Identity identity) {
        UtilJava.identity = identity;
    }

    /**
     * Return the identity we stored
     *
     * @return The identity we stored
     */
    public static Identity getIdentity() {
        return identity;
    }

    /**
     * Save the Encrypted Identity, RegistrationURL and DeviceAPIVersion in saved preferences.
     */
    public static void saveIdentityInformation(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(IDENTITY, MODE_PRIVATE);
            SharedPreferences.Editor editor = sharedPreferences.edit();
            JSONObject jsonIdentity = getIdentity().toJSON();
            byte[] encryptedIdentity = PlatformDelegate.encryptData(jsonIdentity.toString().getBytes());
            editor.putString(IDENTITY, Base64.encodeToString(encryptedIdentity, Base64.DEFAULT));
            editor.putString(REGISTRATION_URL, UtilJava.getAddress());
            editor.apply();
        } catch (Exception e) {
            Logger.error(String.valueOf(e), "Error saving identity info");
        }
    }

    // < 3.5.3
   /*public static boolean extractIdentityInformation(Context context){
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(IDENTITY, MODE_PRIVATE);
            SharedPreferences.Editor editor = sharedPreferences.edit();
            String identityString = sharedPreferences.getString(IDENTITY, "");
            String identityAddress = sharedPreferences.getString(REGISTRATION_URL, "");
            if (!identityString.equals("")) {
                byte[] decodeFromBase64 = Base64.decode(identityString, Base64.DEFAULT);
                byte[] decryptedIdentity = PlatformDelegate.decryptData(context, decodeFromBase64);
                Identity identity = new Identity(new JSONObject(new String(decryptedIdentity)));
                setIdentity(identity);
                setAddress(identityAddress);
                return true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }*/


    // >=3.5.3

    /**
     * Extract the saved Encrypted Identity, RegistrationURL and DeviceAPIVersion from saved preferences.
     */
    public static boolean extractIdentityInformation(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(IDENTITY, MODE_PRIVATE);
            SharedPreferences.Editor editor = sharedPreferences.edit();
            String identityString = sharedPreferences.getString(IDENTITY, "");
            Logger.info("old identity string is {}", identityString);
            String identityAddress = sharedPreferences.getString(REGISTRATION_URL, "");
            if (!identityString.equals("")) {
                byte[] base64EncryptData = Base64.decode(identityString, Base64.DEFAULT);
                byte[] decryptedIdentity = null;
                try {
                    decryptedIdentity = PlatformDelegate.decryptData(base64EncryptData);
                } catch (EncryptionRequiredException e) {
                    Logger.error(String.valueOf(e), "Error decrypting data");
                }
                Identity identity = new Identity(new JSONObject(new String(decryptedIdentity)));
                setIdentity(identity);
                setAddress(identityAddress);
                return true;
            }
        } catch (Exception e) {
            Logger.error(String.valueOf(e), "Error extracting identity info");
        }
        return false;
    }

    public static void setAddress(String address) {
        UtilJava.address = address;
    }

    public static String getAddress() {
        return address;
    }

    /**
     * Return a unique identifier for the device (see comments inline below).
     * It is the combination of an Identity's instance ID and device ID that
     * has to be unique to register for transaction verification, and the
     * instance ID already has 64 bits of random.
     *
     * @return An identifier for the device.
     */
    public static String getDeviceId() {
        // To register with the transaction component just
        // requires a non-null identifier. A real identifier -
        // such as a device PIN on BlackBerry or the registration_id
        // returned from registering an app for notifications on
        // Android - is required for the advanced notification
        // functionality. The random identifier used here is okay
        // for applications not using notifications.
        int randomVal = new Random().nextInt();
        // Make sure the value is positive.
        randomVal &= 0x7FFFFFFF;
        return String.valueOf(randomVal);
    }
}
