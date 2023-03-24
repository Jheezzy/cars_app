import 'package:flutter/material.dart';

import './car_detail_screen.dart';

class CarItem extends StatelessWidget {
  final String imageURL;
  final String name;
  final String price;
  final String id;

  CarItem({
    required this.imageURL,
    required this.name,
    required this.price,
    required this.id,
  });

  void selectCar(BuildContext context) {
    Navigator.of(context).pushNamed(CarDetailScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCar(context),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        margin: EdgeInsets.all(10),
        color: Colors.blue,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                imageURL,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 16),
              child: Text(
                name,
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Color.fromRGBO(0, 0, 0, 1.0),
                      blurRadius: 50,
                    ),
                  ],
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black12,
                ),
                overflow: TextOverflow.fade,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      shadows: [
                        Shadow(
                            color: Color.fromRGBO(0, 0, 0, 1.0),
                            blurRadius: 50),
                      ],
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black12,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 200, bottom: 10),
                  //   child: IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       Icons.favorite_outline,
                  //       size: 45,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
