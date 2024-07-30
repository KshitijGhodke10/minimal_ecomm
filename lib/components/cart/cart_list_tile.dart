import 'package:flutter/material.dart';
import 'package:minimal_ecomm/models/product.dart';
import 'package:minimal_ecomm/models/shop.dart';

class CartListTile extends StatelessWidget {
  final Product product;
  final Shop shop;

  const CartListTile({super.key, required this.product, required this.shop});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: const BeveledRectangleBorder(),
      title: Text(product.name),
      subtitle: Text('₹ ${product.price.toString()}'),
      leading: Image.network(product.imagePath),
      trailing: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(content: const Text('Remove this your cart ?'), actions: [
              MaterialButton(
                onPressed: () {
                  shop.removeFromCart(product);
                  Navigator.pop(context);
                },
                child: const Text('Remove'),
              ),
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
            ]),
          );
        },
        icon: const Icon(Icons.remove),
      ),
    );;
  }
}
