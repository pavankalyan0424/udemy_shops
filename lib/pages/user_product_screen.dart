import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_shops/providers/products.dart';
import 'package:udemy_shops/widgets/app_drawer.dart';
import 'package:udemy_shops/widgets/user_product_item.dart';

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
            onPressed: () {},
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) => UserProductItem(
          title: productsData.items[index].title,
          imageUrl: productsData.items[index].imageUrl,
        ),
        itemCount: productsData.items.length,
      ),
    );
  }
}
