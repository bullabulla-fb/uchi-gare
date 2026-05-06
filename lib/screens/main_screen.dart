import 'package:flutter/material.dart';
import 'garage_edit_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SizedBox.shrink(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() => _selectedIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.directions_car),
            label: 'モデル',
          ),
          NavigationDestination(
            icon: Icon(Icons.garage),
            label: 'ガレージ',
          ),
          NavigationDestination(
            icon: Icon(Icons.space_dashboard),
            label: '車庫入れ',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: '設定',
          ),
        ],
      ),
      floatingActionButton: _selectedIndex == 1
          ? FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GarageEditScreen(),
                  ),
                );
              },
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}
