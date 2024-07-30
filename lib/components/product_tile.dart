import 'package:flutter/material.dart';
import 'package:minimal_ecomm/components/my_button_2.dart';
import 'package:minimal_ecomm/models/product.dart';
import 'package:minimal_ecomm/models/shop.dart';
import 'package:provider/provider.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary, borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Product Image
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  child: Image.network(product.imagePath),
                ),
              ),
              //Product Name
              const SizedBox(
                height: 25,
              ),
              Text(
                product.name,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //Product Desc
              const SizedBox(
                height: 10,
              ),
              Text(
                product.description,
                style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
                overflow: TextOverflow.ellipsis,
                maxLines: 9,
              ),
            ],
          ),
          //Price
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('₹ ${product.price.toString()}'),
              //add to cart
              Consumer<Shop>(
                builder: (context, shop, child) {
                  return MyButton2(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(content: const Text('Add this your cart ?'), actions: [
                            MaterialButton(
                              onPressed: () {
                                shop.addToCart(product);
                                Navigator.pop(context);
                              },
                              child: const Text('Add'),
                            ),
                            MaterialButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Cancel'),
                            ),
                          ]),
                        );
                      },
                      child: const Icon(Icons.add));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
