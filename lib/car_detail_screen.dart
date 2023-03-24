import 'package:flutter/material.dart';
import './dummy_car_data.dart';

class CarDetailScreen extends StatelessWidget {
  static const routeName = '/cardetail';

  final void Function(String carId) setfavorite;
  final bool Function(String carId) isFavorite;

  const CarDetailScreen(this.setfavorite, this.isFavorite);

  @override
  Widget build(BuildContext context) {
    final carId = ModalRoute.of(context)?.settings.arguments as String;

    final selectedCar = dummyCarData.firstWhere((car) => car.id == carId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCar.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 400,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image.network(
                  selectedCar.imageURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setfavorite(carId),
        child: Icon(isFavorite(carId) ? Icons.favorite : Icons.favorite_border)
      ),
    );
  }
}
