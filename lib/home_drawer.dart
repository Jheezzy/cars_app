import 'dart:ui';

import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 150,
            width: double.infinity,
            color: Colors.indigo[200],
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'WELCOME TO LUXURY! ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            // behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: Column(
              children: [
                Text(
                  'PRESS ME',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
