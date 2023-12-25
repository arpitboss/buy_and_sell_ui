import 'package:buy_and_sell_ui/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/sizes.dart';
import '../widgets/circular_icon.dart';
import '../widgets/helper.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ArpitHelper.isDarkMode(context);
    return Container(
        padding: const EdgeInsets.symmetric(
            horizontal: ArpitSizes.defaultSpace,
            vertical: ArpitSizes.defaultSpace / 3),
        decoration: BoxDecoration(
            color: dark ? ArpitColors.darkerGrey : ArpitColors.light,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(ArpitSizes.cardRadiusLg),
                topRight: Radius.circular(ArpitSizes.cardRadiusLg))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircularIcon(
                  width: 40,
                  height: 40,
                  icon: Icons.remove,
                  color: ArpitColors.white,
                  backgroundColor: ArpitColors.darkerGrey,
                ),
                const SizedBox(
                  width: ArpitSizes.spaceBtwItems,
                ),
                Text(
                  '2',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  width: ArpitSizes.spaceBtwItems,
                ),
                const CircularIcon(
                  width: 40,
                  height: 40,
                  icon: Icons.add,
                  color: ArpitColors.white,
                  backgroundColor: ArpitColors.darkerGrey,
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(ArpitSizes.md),
                  backgroundColor: Colors.deepPurple.withOpacity(0.9),
                  side: const BorderSide(color: ArpitColors.black),
                ),
                onPressed: () {
                  Get.to(() => const AddToCartScreen());
                },
                child: const Text(
                  'Add To Cart',
                  style: TextStyle(color: ArpitColors.white),
                ))
          ],
        ));
  }
}
