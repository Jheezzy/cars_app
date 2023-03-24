import 'package:flutter/material.dart';

import './car_item.dart';
import './dummy_car_data.dart';

class CarHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CarItem(
            imageURL: dummyCarData[index].imageURL,
            name: dummyCarData[index].name,
            price: dummyCarData[index].price,
            id: dummyCarData[index].id,
          );
          //* we created a seperate widget because children needs a list of widget not a list of car which is our dummyCarData,
          //* so we had to convert list of car which is just a class to list of caritem which is a widget
        },
        itemCount: dummyCarData.length,
      ),
    );
  }
}
