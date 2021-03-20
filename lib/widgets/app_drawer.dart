import 'package:flutter/material.dart';
import 'package:udemy_shops/pages/orders_screen.dart';

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
        ],
      ),
    );
  }
}