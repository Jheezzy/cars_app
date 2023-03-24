import 'package:flutter/material.dart';

class Car {
  final String imageURL;
  final String name;
  final String price;
  final String budget;
  String id;

  Car({
    required this.imageURL,
    required this.name,
    required this.price,
    required this.budget,
    required this.id,
  });
}
