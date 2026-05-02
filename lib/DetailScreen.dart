import 'package:flutter/material.dart';
import 'package:nav_arguments/product.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(product.imagePath),
            ),
            Text("Title: ${product.title}"),
            Text("Description: ${product.desciption}"),
            SizedBox(height: 16),
            Text(
              "Price: ${product.price}",
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "The Operation passed Successfully!");
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
