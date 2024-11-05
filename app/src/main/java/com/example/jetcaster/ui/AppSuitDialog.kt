// package com.example.jetcaster.ui

// import android.app.AlertDialog
// import android.content.Context
// import android.util.Log
// import android.os.Handler
// import android.os.Looper

// class AppSuitDialog {
//     companion object {
//         private var myContext: Context? = null

//         @JvmStatic
//         fun initialize(context: Context) {
//             myContext = context
//         }

//         @JvmStatic
//         fun showHandlerDialog(type: Int) {
//             when (type) {
//                 1 -> {
//                     Log.e("AppSuitSecureHandler", " / Rooting")
//                     callDialog("Rooting detected")
//                 }
//                 2 -> {
//                     Log.e("AppSuitSecureHandler", " / integrity")
//                     callDialog("App tampering detected")
//                 }
//                 3 -> {
//                     Log.e("AppSuitSecureHandler", " / debugging")
//                     callDialog("Debugging attempt detected")
//                 }
//                 4 -> {
//                     Log.e("AppSuitSecureHandler", " / emul")
//                     callDialog("Emulator detected")
//                 }
//                 else -> Log.e("AppSuitSecureHandler", " / Unknown")
//             }
//         }

//         private fun callDialog(message: String) {
//             val handler = Handler(Looper.getMainLooper())
//             handler.post {
//                 myContext?.let {
//                     AlertDialog.Builder(it)
//                         .setTitle("AppSuit Detection Result")
//                         .setMessage(message)
//                         .setPositiveButton("OK") { dialog, _ ->
//                             dialog.dismiss()
//                         }
//                         .show()
//                 }
//             }
//         }
//     }
// }
// src/main/java/com/stealien/helloappsuit/dialog/AppSuitDialog.kt -> package com.stealien.helloappsuit.dialog
// package com.example.jetcaster.ui

// import android.util.Log

// class AppSuitDialog {
//     companion object {
//         @JvmStatic
//         open fun showHandlerDialog(type: Int) {
//             if (type == 1) {
//                 // Actions to perform when rooting is detected
//                 Log.e("AppSuitSecureHandler", " / Rooting")
//             } else if (type == 2) {
//                 // Actions to perform when app tampering is detected
//                 Log.e("AppSuitSecureHandler", " / integrity")
//             } else if (type == 3) {
//                 // Actions to perform when a debugging attempt is detected
//                 Log.e("AppSuitSecureHandler", " / debugging")
//             } else if (type == 4) {
//                 // Actions to perform when the app is detected running on an emulator
//                 Log.e("AppSuitSecureHandler", " / emul")
//             }
//         }
//     }
// }

// package com.example.jetcaster.ui

// import android.app.AlertDialog
// import android.content.Context
// import android.util.Log

// class AppSuitDialog {
//     companion object {
//         @JvmStatic
//         fun showHandlerDialog(context: Context, type: Int) {
//             val mainCategory = type shr 16
//             val subCategory = (type shr 12) and 0xF
//             val message = when (mainCategory) {
//                 1 -> {
//                     // Actions to perform when rooting is detected
//                     Log.e("AppSuitSecureHandler", " / Rooting with $subCategory")
//                     when (subCategory) {
//                         1 -> "Rooting detected with root paths"
//                         2 -> "Rooting detected with root files"
//                         3 -> "Rooting with Magisk"
//                         else -> "Rooting with $subCategory"
//                     }
//                 }
//                 2 -> {
//                     // Actions to perform when app tampering is detected
//                     Log.e("AppSuitSecureHandler", " / integrity $subCategory")
//                     "App tampering detected - integrity check"
//                 }
//                 3 -> {
//                     // Actions to perform when a debugging attempt is detected
//                     Log.e("AppSuitSecureHandler", " / debugging $subCategory")
//                     "Debugging attempt detected"
//                 }
//                 4 -> {
//                     // Actions to perform when the app is detected running on an emulator
//                     Log.e("AppSuitSecureHandler", " / emul $subCategory")
//                     "Emulator detected"
//                 }
//                 else -> {
//                     Log.e("AppSuitSecureHandler", " / Unknown issue")
//                     "Unknown issue"
//                 }
//             }

//             Log.d("AppSuitSecureHandler", "Showing dialog for type: $type") // Add log for debugging

//             AlertDialog.Builder(context)
//                 .setTitle("Security Alert")
//                 .setMessage(message)
//                 .setPositiveButton("OK") { dialog, _ ->
//                     dialog.dismiss()
//                 }
//                 .show()
//         }
//     }
// }
    package com.example.jetcaster.ui

    import android.app.AlertDialog
    import android.content.Context
    import android.os.Handler
    import android.os.Looper
    import android.util.Log
    import android.app.Activity

//    class AppSuitDialog(private val context: Context) {
//
//        fun callDialog(message: String) {
//            val handler = Handler(Looper.getMainLooper())
//            handler.post {
//                AlertDialog.Builder(context)
//                    .setTitle("AppSuit Detection Result")
//                    .setMessage(message)
//                    .setPositiveButton("OK") { dialog, _ ->
//                        dialog.dismiss()
//                    }
//                    .show()
//            }
//        }
//
//        @JvmStatic
//        fun showHandlerDialog(type: Int) {
//            val mainCategory = type shr 16
//            val subCategory = (type shr 12) and 0xF
//
//            when (mainCategory) {
//                1 -> {
//                    Log.e("AppSuitSecureHandler", " / Rooting with $subCategory")
//                    when (subCategory) {
//                        1 -> {
//                            Log.e("AppSuitSecureHandler", " / Rooting detected with root paths")
//                            callDialog("Rooting with root paths")
//                        }
//                        2 -> {
//                            Log.e("AppSuitSecureHandler", " / Rooting detected with root files")
//                            callDialog("Rooting with root files")
//                        }
//                        3 -> {
//                            Log.e("AppSuitSecureHandler", " / Rooting with Magisk")
//                            callDialog("Rooting with Magisk")
//                        }
//                        else -> {
//                            Log.e("AppSuitSecureHandler", " / Rooting with $subCategory")
//                            callDialog("Not Specified Category $subCategory")
//                        }
//                    }
//                }
//                2 -> {
//                    Log.e("AppSuitSecureHandler", " / integrity $subCategory")
//                    when (subCategory) {
//                        1 -> {
//                            Log.e("AppSuitSecureHandler", " /  detected as resource tampering")
//                            callDialog("Resource Tampering Detection")
//                        }
//                        2 -> {
//                            Log.e("AppSuitSecureHandler", " / detected as so tampering")
//                            callDialog("SO Tampering Detection")
//                        }
//                        else -> {
//                            Log.e("AppSuitSecureHandler", " / Integrity with $subCategory")
//                            callDialog("Not Specified category $subCategory")
//                        }
//                    }
//                }
//                3 -> {
//                    Log.e("AppSuitSecureHandler", " / debugging $subCategory")
//                    when (subCategory) {
//                        1 -> {
//                            Log.e("AppSuitSecureHandler", " /  Debugging as Signal-based")
//                            callDialog("Signal-based Debugging Detection")
//                        }
//                        2 -> {
//                            Log.e("AppSuitSecureHandler", " / Debugging as Signal-based")
//                            callDialog("Signal-based Debugging Detection")
//                        }
//                        3 -> {
//                            Log.e("AppSuitSecureHandler", " / Debugging as Signal-based")
//                            callDialog("Signal-based Debugging Detection")
//                        }
//                        4 -> {
//                            Log.e("AppSuitSecureHandler", " / Debugging as Signal-based")
//                            callDialog("Signal-based Debugging Detection")
//                        }
//                        5 -> {
//                            Log.e("AppSuitSecureHandler", " / Debugging as JDWP // Deprecated")
//                            callDialog("JDWP Debugging Detection // Deprecated")
//                        }
//                        6 -> {
//                            Log.e("AppSuitSecureHandler", " / Debugging with Frida")
//                            callDialog("Frida Debugging Detection")
//                        }
//                        7 -> {
//                            Log.e("AppSuitSecureHandler", " / Debugging with USB")
//                            callDialog("USB Debugging Detection")
//                        }
//                        8 -> {
//                            Log.e("AppSuitSecureHandler", " / Debugging with ADB")
//                            callDialog("ADB Debugging Detection")
//                        }
//                        9 -> {
//                            Log.e("AppSuitSecureHandler", " / Debugging with memory tampering")
//                            callDialog("Memory Tampering Debugging Detection")
//                        }
//                        10 -> {
//                            Log.e("AppSuitSecureHandler", " / Debugging with Hook")
//                            callDialog("Hook Debugging Detection")
//                        }
//                        else -> {
//                            Log.e("AppSuitSecureHandler", " / Integrity with $subCategory")
//                            callDialog("Not Specified Category $subCategory")
//                        }
//                    }
//                }
//                4 -> {
//                    Log.e("AppSuitSecureHandler", " / emul $subCategory")
//                    when (subCategory) {
//                        1 -> {
//                            Log.e("AppSuitSecureHandler", " /  App running on emulator with emul")
//                            callDialog("Emul Detected")
//                        }
//                        2 -> {
//                            Log.e("AppSuitSecureHandler", " / App running on emulator with Nox")
//                            callDialog("Nox Detected")
//                        }
//                        3 -> {
//                            Log.e("AppSuitSecureHandler", " / App running on emulator with Memu")
//                            callDialog("Memu Detected")
//                        }
//                        4 -> {
//                            Log.e("AppSuitSecureHandler", " / App running on emulator with BlueStack")
//                            callDialog("BlueStack Detected")
//                        }
//                        5 -> {
//                            Log.e("AppSuitSecureHandler", " / App running on emulator with LdPlayer")
//                            callDialog("LdPlayer Detected")
//                        }
//                        6 -> {
//                            Log.e("AppSuitSecureHandler", " / App running on emulator with Mumu")
//                            callDialog("Mumu Detected")
//                        }
//                        else -> {
//                            Log.e("AppSuitSecureHandler", " / Integrity with $subCategory")
//                            callDialog("Not Specified category $subCategory")
//                        }
//                    }
//                }
//                else -> {
//                    Log.e("AppSuitSecureHandler", " / unknown detection")
//                    callDialog("Unknown detection")
//                }
//            }
//            Log.e("AppSuitSecureHandler", " / " + Integer.toHexString(type))
//        }
//    }
class AppSuitDialog {
    companion object {
        private var ctx: Context? = null

        fun init(context: Context) {
            ctx = context
        }

        @JvmStatic
        fun callDialog(message: String) {
            val handler = Handler(Looper.getMainLooper())
            handler.postDelayed({
                val activity = ctx as? Activity
                AlertDialog.Builder(ctx!!)
                    .setTitle("AppSuit Detection Result")
                    .setCancelable(false)
                    .setMessage(message)
                    .setPositiveButton("OK") { dialog, _ ->
                        dialog.dismiss()
                        activity?.finishAffinity()
                    }
                    .show()
            }, 0)
        }

        @JvmStatic
        fun showHandlerDialog(type: Int) {
            val mainCategory = type shr 16
            val subCategory = (type shr 12) and 0xF

            when (mainCategory) {
                1 -> {
                    Log.e("AppSuitSecureHandler", " / Rooting with $subCategory")
                    when (subCategory) {
                        1 -> {
                            Log.e("AppSuitSecureHandler", " / Rooting detected with root paths")
                            callDialog("Rooting with root paths")
                        }
                        2 -> {
                            Log.e("AppSuitSecureHandler", " / Rooting detected with root files")
                            callDialog("Rooting with root files")
                        }
                        3 -> {
                            Log.e("AppSuitSecureHandler", " / Rooting with Magisk")
                            callDialog("Rooting with Magisk")
                        }
                        else -> {
                            Log.e("AppSuitSecureHandler", " / Rooting with $subCategory")
                            callDialog("Not Specified Category $subCategory")
                        }
                    }
                }
                2 -> {
                    Log.e("AppSuitSecureHandler", " / integrity $subCategory")
                    when (subCategory) {
                        1 -> {
                            Log.e("AppSuitSecureHandler", " /  detected as resource tampering")
                            callDialog("Resource Tampering Detection")
                        }
                        2 -> {
                            Log.e("AppSuitSecureHandler", " / detected as so tampering")
                            callDialog("SO Tampering Detection")
                        }
                        else -> {
                            Log.e("AppSuitSecureHandler", " / Integrity with $subCategory")
                            callDialog("Not Specified category $subCategory")
                        }
                    }
                }
                3 -> {
                    Log.e("AppSuitSecureHandler", " / debugging $subCategory")
                    when (subCategory) {
                        1 -> {
                            Log.e("AppSuitSecureHandler", " /  Debugging as Signal-based")
                            callDialog("Signal-based Debugging Detection")
                        }
                        2 -> {
                            Log.e("AppSuitSecureHandler", " / Debugging as Signal-based")
                            callDialog("Signal-based Debugging Detection")
                        }
                        3 -> {
                            Log.e("AppSuitSecureHandler", " / Debugging as Signal-based")
                            callDialog("Signal-based Debugging Detection")
                        }
                        4 -> {
                            Log.e("AppSuitSecureHandler", " / Debugging as Signal-based")
                            callDialog("Signal-based Debugging Detection")
                        }
                        5 -> {
                            Log.e("AppSuitSecureHandler", " / Debugging as JDWP // Deprecated")
                            callDialog("JDWP Debugging Detection // Deprecated")
                        }
                        6 -> {
                            Log.e("AppSuitSecureHandler", " / Debugging with Frida")
                            callDialog("Frida Debugging Detection")
                        }
                        7 -> {
                            Log.e("AppSuitSecureHandler", " / Debugging with USB")
                            callDialog("USB Debugging Detection")
                        }
                        8 -> {
                            Log.e("AppSuitSecureHandler", " / Debugging with ADB")
                            callDialog("ADB Debugging Detection")
                        }
                        9 -> {
                            Log.e("AppSuitSecureHandler", " / Debugging with memory tampering")
                            callDialog("Memory Tampering Debugging Detection")
                        }
                        10 -> {
                            Log.e("AppSuitSecureHandler", " / Debugging with Hook")
                            callDialog("Hook Debugging Detection")
                        }
                        else -> {
                            Log.e("AppSuitSecureHandler", " / Integrity with $subCategory")
                            callDialog("Not Specified Category $subCategory")
                        }
                    }
                }
                4 -> {
                    Log.e("AppSuitSecureHandler", " / emul $subCategory")
                    when (subCategory) {
                        1 -> {
                            Log.e("AppSuitSecureHandler", " /  App running on emulator with emul")
                            callDialog("Emul Detected")
                        }
                        2 -> {
                            Log.e("AppSuitSecureHandler", " / App running on emulator with Nox")
                            callDialog("Nox Detected")
                        }
                        3 -> {
                            Log.e("AppSuitSecureHandler", " / App running on emulator with Memu")
                            callDialog("Memu Detected")
                        }
                        4 -> {
                            Log.e("AppSuitSecureHandler", " / App running on emulator with BlueStack")
                            callDialog("BlueStack Detected")
                        }
                        5 -> {
                            Log.e("AppSuitSecureHandler", " / App running on emulator with LdPlayer")
                            callDialog("LdPlayer Detected")
                        }
                        6 -> {
                            Log.e("AppSuitSecureHandler", " / App running on emulator with Mumu")
                            callDialog("Mumu Detected")
                        }
                        else -> {
                            Log.e("AppSuitSecureHandler", " / Integrity with $subCategory")
                            callDialog("Not Specified category $subCategory")
                        }
                    }
                }
                else -> {
                    Log.e("AppSuitSecureHandler", " / unknown detection")
                    callDialog("Unknown detection")
                }
            }
            Log.e("AppSuitSecureHandler", " / " + Integer.toHexString(type))
        }
    }
}
