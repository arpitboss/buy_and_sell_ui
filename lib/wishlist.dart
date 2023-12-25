import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/product/product_card_vertical.dart';
import 'common/widgets/circular_icon.dart';
import 'common/widgets/custom_appbar.dart';
import 'common/widgets/grid_layout.dart';
import 'home.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableAppBar(
          title: Text(
            'Wishlist',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CircularIcon(
              icon: Icons.add,
              onPressed: () {
                Get.to(const HomeScreen());
              },
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ArpitSizes.defaultSpace),
          child: GridLayout(
            itemCount: 10,
            itemBuilder: (_, index) {
              return const ProductCardVertical();
            },
          ),
        ),
      ),
    );
  }
}
