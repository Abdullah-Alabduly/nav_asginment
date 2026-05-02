import 'package:flutter/material.dart';
import 'package:nav_arguments/DetailScreen.dart';
import 'package:nav_arguments/product.dart';

class ProductScreesn extends StatefulWidget {
  const ProductScreesn({super.key, required this.products});
  final List<Product> products;

  @override
  // ignore: no_logic_in_create_state
  State<ProductScreesn> createState() => _Productscreen(products: products);
}

class _Productscreen extends State<ProductScreesn> {
  _Productscreen({required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(products[index].imagePath),
              title: Text(products[index].title),
              subtitle: Text(products[index].desciption),
              trailing: Text("${products[index].price}"),
              // Navigation
              onTap: () => _navigatToDetailScreen(context, products[index]),
            ),
          );
        },
      ),
    );
  }

  Future<void> _navigatToDetailScreen(
    BuildContext context,
    Product product,
  ) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute<String>(
        builder: (context) => Detailscreen(product: product),
      ),
    );
    if (!context.mounted) return;
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
}
