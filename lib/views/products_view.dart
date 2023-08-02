import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductsView extends StatelessWidget {
  ProductsView({super.key});

  final List<String> products = [
    "Headphones",
    "Phone case",
    "Earphones",
    "Airpods",
    "Chargers & Adapters",
    "Cables",
    "Screen protector",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
            ),
            onTap: () {
              context.push(
                "/products_page/${products[index]}",
              );
            },
          );
        },
      ),
    );
  }
}
