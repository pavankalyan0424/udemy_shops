import 'package:flutter/material.dart';
import '../widgets/product_grid.dart';


class ProductOverViewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Shop',
        ),
      ),
      body: ProductsGrid(),
    );
  }
}


