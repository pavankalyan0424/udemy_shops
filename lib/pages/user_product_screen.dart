import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_shops/providers/products.dart';
import 'package:udemy_shops/widgets/app_drawer.dart';
import 'package:udemy_shops/widgets/user_product_item.dart';

import 'edit_product_screen.dart';

class UserProductScreen extends StatelessWidget {
  static const String routeName = '/user_product';

  @override
  Widget build(BuildContext context) {
    final Products productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Products',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () =>
                Navigator.of(context).pushNamed(EditProductScreen.routeName),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) => UserProductItem(
          title: productsData.items[index].title,
          imageUrl: productsData.items[index].imageUrl,
          id: productsData.items[index].id,
        ),
        itemCount: productsData.items.length,
      ),
    );
  }
}
