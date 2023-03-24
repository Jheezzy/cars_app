import 'package:flutter/material.dart';

import 'car.dart';
import 'home_drawer.dart';
import 'car_home_screen.dart';
import './favorites_screen.dart';

class TabScreen extends StatefulWidget {
  final List<Car> favoriteCars;

  TabScreen(this.favoriteCars);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>> pages = [];
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    pages = [
      {
        'page': CarHomeScreen(),
        'title': 'LUXURY CARS',
      },
      {
        'page': FavoritesScreen(widget.favoriteCars),
        'title': 'Favorite Cars',
      }
    ];
  }

  void selectPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pages[selectedIndex]['title'] as String,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      drawer: HomeDrawer(),
      body: (pages[selectedIndex]['page'] as Widget),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[700],
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
        onTap: selectPage,
      ),
    );
  }
}
