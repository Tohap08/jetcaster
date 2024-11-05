package com.example.jetcaster.ui

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch

class MainViewModel : ViewModel() {
    private val _isDialogVisible = MutableStateFlow(false)
    val isDialogVisible: StateFlow<Boolean> get() = _isDialogVisible

    fun showDialog(message: String) {
        viewModelScope.launch {
            _isDialogVisible.value = true
        }
    }

    fun dismissDialog() {
        viewModelScope.launch {
            _isDialogVisible.value = false
        }
    }
}
