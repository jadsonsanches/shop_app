import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      // leading: IconButton(icon: ,),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
          color: Colors.white,
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
