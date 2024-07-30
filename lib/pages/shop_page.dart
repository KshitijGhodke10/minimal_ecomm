import 'package:flutter/material.dart';
import 'package:minimal_ecomm/components/my_drawer.dart';
import 'package:minimal_ecomm/components/product_tile.dart';
import 'package:minimal_ecomm/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, shop, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Shop Page'),
            backgroundColor: Colors.transparent,
            elevation: 0,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          drawer: const MyDrawer(),
          backgroundColor: Theme.of(context).colorScheme.background,
          body: ListView(children: [
            //shop title
            Center(
              child: Text(
                'Pick from Selected list of Premium Products',
                style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),
            //subtitle
            //product list
            SizedBox(
                height: 700,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductTile(product: shop.shop[index]);
                  },
                  itemCount: shop.shop.length,
                ))
          ]),
        );
      },
    );
  }
}
