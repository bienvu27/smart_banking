
import com.entrust.identityGuard.mobile.sdk.Identity
import com.entrust.identityGuard.mobile.sdk.PlatformDelegate

import com.entrust.identityGuard.mobile.sdk.TransactionProvider
import java.util.*


class CreateIdentity {
    /** Given a serial number and activation code, create a new
     * soft token identity.  */
     fun createNewSoftTokenIdentity(
        serialNumber: String?,
        activationCode: String?
    ): Identity? {
        // see previous use case.
        return  null
    }

    /** Create a new identity and complete activation
     * by communicating with the transaction component.
     * The URL here is the URL of the transaction component,
     * for example http://my.host:8445/igst
     *
     * This should be performed on a background thread/task.
     */
    fun createNewSoftTokenIdentityOnline(
        serialNumber: String?,
        activationCode: String?,
        url: String?
    ): Identity? {
        // Use the existing method to create a new soft token.

        val identity: Identity = createNewSoftTokenIdentity(
            serialNumber, activationCode
        )
            ?: // There was some error creating the identity, due to
            // an invalid serial number or activation code.
            return null

        // TransactionProvider provides methods to communicate
        // with the Transaction component.
        println("qua day khong")
        val provider = TransactionProvider(url)
        provider.register(
            PlatformDelegate.getCommCallback(),
            deviceId, false, true, true, true,
            identity
        )

        if (identity.isRegisteredForTransactions()) {
            // Registration succeeded.
            println("sucess luon kaka")
        } else {
            println("Error")
            // Registration failed. The registration code should
            // be displayed to the user so the activation can
            // be completed manually. Even if registration failed
            // this time, applications may call the register
            // method again later to register an identity to
            // receive transactions.
        }
        // The returned identity should be saved by the application.
        return identity
    }// To register with the transaction component just
    // requires a non-null identifier. A real identifier -
    // such as a device PIN on BlackBerry or the registration_id
    // returned from registering an app for notifications on
    // Android - is required for the advanced notification
    // functionality. The random identifier used here is okay
    // for applications not using notifications.
    // Make sure the value is positive.
    /** Return an identifier for the device this application
     * is running on.
     */
    private val deviceId: String
        private get() {
            // To register with the transaction component just
            // requires a non-null identifier. A real identifier -
            // such as a device PIN on BlackBerry or the registration_id
            // returned from registering an app for notifications on
            // Android - is required for the advanced notification
            // functionality. The random identifier used here is okay
            // for applications not using notifications.
            var randomVal: Int = Random().nextInt()
            // Make sure the value is positive.
            randomVal = randomVal and 0x7FFFFFFF
            return randomVal.toString()
        }
}