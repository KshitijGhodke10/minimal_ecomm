import 'package:flutter/material.dart';
import 'package:minimal_ecomm/components/cart/cart_footer.dart';
import 'package:minimal_ecomm/components/cart/cart_list_tile.dart';
import 'package:minimal_ecomm/components/empty_view.dart';
import 'package:minimal_ecomm/components/product_tile.dart';
import 'package:minimal_ecomm/models/shop.dart';
import 'package:minimal_ecomm/pages/check_out_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, shop, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            backgroundColor: Colors.transparent,
            title: Text(
              'Cart',
              style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          body: shop.cart.isEmpty
              ? EmptyView()
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return CartListTile(product: shop.cart[index], shop: shop);
                        },
                        itemCount: shop.cart.length,
                      ),
                    ),
                    CartFooter(
                      shop: shop,
                      checkOut: () => Navigator.pushNamed(context, '/checkout_page'),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
