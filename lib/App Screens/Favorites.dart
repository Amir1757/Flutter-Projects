import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favorites',
        style: TextStyle(fontWeight: FontWeight.w900),
        textAlign: TextAlign.center,
      ),
    );
  }
}