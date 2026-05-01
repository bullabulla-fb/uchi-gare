package com.ankong.uchigare

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import com.ankong.uchigare.navigation.AppNavGraph
import com.ankong.uchigare.ui.theme.うちガレTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            うちガレTheme {
                AppNavGraph()
            }
        }
    }
}
