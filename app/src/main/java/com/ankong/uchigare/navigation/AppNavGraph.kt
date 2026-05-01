package com.ankong.uchigare.navigation

import androidx.compose.runtime.Composable
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.ankong.uchigare.ui.MainScreen
import com.ankong.uchigare.ui.screen.GarageEditScreen

@Composable
fun AppNavGraph() {
    val navController = rememberNavController()
    NavHost(navController = navController, startDestination = "main") {
        composable("main") {
            MainScreen(onCreateGarage = { navController.navigate("garage_edit") })
        }
        composable("garage_edit") {
            GarageEditScreen(onBack = { navController.popBackStack() })
        }
    }
}
