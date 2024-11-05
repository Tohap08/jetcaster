package com.example.jetcaster.ui

import androidx.compose.material.AlertDialog
import androidx.compose.material.Button
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.platform.LocalContext

@Composable
fun SecureHandlerDialog(
    message: String,
    onDismiss: () -> Unit
) {
    val showDialog = remember { mutableStateOf(true) }

    if (showDialog.value) {
        AlertDialog(
            onDismissRequest = {
                showDialog.value = false
                onDismiss()
            },
            title = { Text(text = "AppSuit Detection Result") },
            text = { Text(message) },
            confirmButton = {
                Button(onClick = {
                    showDialog.value = false
                    onDismiss()
                }) {
                    Text("OK")
                }
            }
        )
    }
}
