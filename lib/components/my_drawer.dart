import 'package:flutter/material.dart';
import 'package:minimal_ecomm/components/big_icon.dart';
import 'package:minimal_ecomm/components/my_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Center(
                child: DrawerHeader(
                  padding: EdgeInsets.all(10),
                  child: BigIcon(iconData: Icons.shopping_bag),
                ),
              ),
              MyTile(
                icon: Icon(Icons.home, color: Theme.of(context).colorScheme.inversePrimary),
                onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/shop_page', (route) => false),
                title: 'Home',
              ),
              MyTile(
                icon: Icon(Icons.shopping_cart, color: Theme.of(context).colorScheme.inversePrimary),
                onTap: () => Navigator.pushNamed(context, '/cart_page'),
                title: 'Cart',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: MyTile(
              icon: Icon(Icons.exit_to_app, color: Theme.of(context).colorScheme.inversePrimary),
              onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/intro_page', (route) => false),
              title: 'Exit',
            ),
          ),
        ],
      ),
    );
  }
}
