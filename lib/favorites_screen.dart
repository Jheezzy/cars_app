import 'package:flutter/material.dart';

import 'car.dart';

class FavoritesScreen extends StatelessWidget {
  List<Car> favoriteCars;

  FavoritesScreen(this.favoriteCars);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Favorites',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
