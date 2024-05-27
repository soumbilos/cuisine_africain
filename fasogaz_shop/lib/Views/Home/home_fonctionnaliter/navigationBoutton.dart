import 'package:flutter/material.dart';
import '../Views_Screens/stocks/Stock.dart';
import 'desboard.dart';

final GlobalKey<_BottomNavigationState> _bottomNavigationKey = GlobalKey();
int  _selectedIndex =0;

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  //int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _getSelectedScreen(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined),
            label: 'Stock',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update_outlined),
            label: 'Historique',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _getSelectedScreen(int index) {
    switch (index) {
      case 0:
        return const desboard();
      case 1:
        return stockbar();
      case 2:
        return const SizedBox();
      case 3:
        return const SizedBox();
      default:
        return const SizedBox();
    }
  }
}
