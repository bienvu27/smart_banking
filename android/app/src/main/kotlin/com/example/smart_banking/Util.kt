package com.example.smart_banking

import com.entrust.identityGuard.mobile.sdk.Identity
import java.util.*

class Util {
    private var identity: Identity? = null

    fun setIdentity(identity: Identity) {
        Util().identity = identity
    }
    fun getDeviceId(): String {
        // To register with the transaction component just
        // requires a non-null identifier. A real identifier -
        // such as a device PIN on BlackBerry or the registration_id
        // returned from registering an app for notifications on
        // Android - is required for the advanced notification
        // functionality. The random identifier used here is okay
        // for applications not using notifications.
        var randomVal = Random().nextInt()
        // Make sure the value is positive.
        randomVal = randomVal and 0x7FFFFFFF
        return randomVal.toString()
    }
}