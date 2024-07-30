import 'package:flutter/material.dart';
import 'package:minimal_ecomm/models/product.dart';
import 'package:minimal_ecomm/models/shop.dart';

class CartFooter extends StatelessWidget {
  final Shop shop;
  final void Function()? checkOut;

  const CartFooter({super.key, required this.shop, required this.checkOut});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          //Total Cart Cost
          cartFooterRow(leading: 'Total cart amount', trailing: "${getTotal(shop.cart)}"),
          //Fee
          cartFooterRow(leading: 'Tax', trailing: "${(getTotal(shop.cart) % 18)}"),
          //Tax
          cartFooterRow(leading: 'Fee', trailing: "150"),
          //Total Amount
          cartFooterRow(leading: 'Total Amount', trailing: "${(getTotal(shop.cart)) + (getTotal(shop.cart) % 18) + 150}"),
          //Check Out
          ElevatedButton(
            onPressed: checkOut,
            child: Text(
              'Check Out',
              style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
        ],
      ),
    );
  }
}

double getTotal(List<Product> products) {
  double total = 0;
  for (final product in products) {
    total += product.price;
  }

  // return products.last.price;
  return total;
}

Widget cartFooterRow({required String leading, required String trailing}) {
  return ListTile(
    title: Text(leading),
    trailing: Text(trailing),
  );
}
