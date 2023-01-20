import 'package:flutter/material.dart';

class Home_main extends StatelessWidget {
  const Home_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}
