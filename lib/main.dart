import 'package:cars_app/car.dart';
import 'package:cars_app/dummy_car_data.dart';
import 'package:cars_app/tab_screen.dart';
import 'package:flutter/material.dart';

import './car_detail_screen.dart';

void main() {
  runApp(CarApp());
}

class CarApp extends StatefulWidget {
  @override
  State<CarApp> createState() => _CarAppState();
}

class _CarAppState extends State<CarApp> {
  List<Car> favoriteCars = [];

  void setfavorite(String carId) {
    final existingCarIndex = favoriteCars.indexWhere((car) => car.id == carId);
    if (existingCarIndex >= 0) {
      setState(() {
        favoriteCars.removeAt(existingCarIndex);
      });
    } else {
      setState(() {
        favoriteCars.add(dummyCarData.firstWhere((car) => car.id == carId));
      });
    }
  }

  bool isFavorite(String carId) {
    return favoriteCars.any((car) => car.id == carId);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car App',
      theme: ThemeData(primarySwatch: Colors.indigo),
      // home: TabScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => TabScreen(favoriteCars), // 1
        CarDetailScreen.routeName: (context) =>
            CarDetailScreen(setfavorite, isFavorite), // 3
      },
    );
  }
}

//* In my main screen i want to have a different cards in a list