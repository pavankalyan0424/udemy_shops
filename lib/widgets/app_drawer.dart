import 'package:flutter/material.dart';
import 'package:udemy_shops/pages/orders_screen.dart';
import 'package:udemy_shops/pages/user_product_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Hello PavanKalyan!'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.shop,
            ),
            title: Text(
              'Shop',
            ),
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          ListTile(
            leading: Icon(
              Icons.payment,
            ),
            title: Text(
              'Orders',
            ),
            onTap: () =>
                Navigator.pushReplacementNamed(context, OrdersScreen.routeName),
          ),
          ListTile(
            leading: Icon(
              Icons.edit,
            ),
            title: Text(
              'Manage Products',
            ),
            onTap: () => Navigator.pushReplacementNamed(
                context, UserProductScreen.routeName),
          ),
        ],
      ),
    );
  }
}
