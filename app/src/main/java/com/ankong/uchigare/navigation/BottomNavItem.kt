package com.ankong.uchigare.navigation

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.DirectionsCar
import androidx.compose.material.icons.filled.Garage
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.SpaceDashboard
import androidx.compose.ui.graphics.vector.ImageVector

enum class BottomNavItem(
    val label: String,
    val icon: ImageVector,
) {
    MODEL("モデル", Icons.Filled.DirectionsCar),
    GARAGE("ガレージ", Icons.Filled.Garage),
    PARKING("車庫入れ", Icons.Filled.SpaceDashboard),
    SETTINGS("設定", Icons.Filled.Settings),
}
