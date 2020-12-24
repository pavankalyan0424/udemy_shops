import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product.dart';
import '../providers/products.dart';

class ProductDetail extends StatelessWidget {
  static const routeName = '/product_detail';

  @override
  Widget build(BuildContext context) {
    final String itemId = ModalRoute.of(context).settings.arguments as String;
    final Product loadedProduct =
        Provider.of<Products>(context, listen: false).findById(itemId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          loadedProduct.title,
        ),
      ),
    );
  }
}
