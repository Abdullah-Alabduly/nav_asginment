import 'package:flutter/material.dart';
import 'package:nav_arguments/product.dart';
import 'package:nav_arguments/productScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductScreesn(
        products: List.generate(
          10,
          (i) => Product(
            "Brothers",
            "They are Singles Looking for Wifes",
            "images/brothers.jpg",
            1000.0
          ),
        ),
      ),
    );
  }
}
