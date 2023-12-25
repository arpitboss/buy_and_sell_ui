import 'package:buy_and_sell_ui/common/product/product_details.dart';
import 'package:buy_and_sell_ui/common/product/product_price.dart';
import 'package:buy_and_sell_ui/common/product/product_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/image_strings.dart';
import '../../utils/sizes.dart';
import '../brand/brand_title.dart';
import '../widgets/circular_container.dart';
import '../widgets/circular_icon.dart';
import '../widgets/helper.dart';
import '../widgets/rounded_image.dart';
import '../widgets/shadow_style.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ArpitHelper.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ArpitSizes.productImageRadius),
          color: dark ? ArpitColors.darkerGrey : ArpitColors.white,
        ),
        child: Column(
          children: [
            CircularContainer(
              height: 123,
              padding: const EdgeInsets.all(ArpitSizes.sm),
              backgroundColor: dark ? ArpitColors.dark : ArpitColors.light,
              child: Stack(
                children: [
                  const RoundedImage(
                    height: 200,
                    imageUrl: ArpitImages.productImage5,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 1,
                    child: CircularContainer(
                      radius: ArpitSizes.sm,
                      backgroundColor: ArpitColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: ArpitSizes.sm, vertical: ArpitSizes.xs),
                      child: Text(
                        '75%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: ArpitColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      color: Colors.red,
                      icon: Icons.favorite,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: ArpitSizes.spaceBtwItems / 2,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: ArpitSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleText(
                      title: 'Mens Printed PullOver Hoodie',
                      smallSize: true,
                    ),
                    SizedBox(
                      height: ArpitSizes.spaceBtwItems / 2,
                    ),
                    BrandTitleTextWithVerifiedIcon(
                      title: 'Nike',
                    ),
                    // Add Spacer Widget
                    // Row
                  ],
                ),
              ), // Column
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: ArpitSizes.sm),
                  child: ProductPriceText(
                    price: '499',
                  ),
                ), // Text
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ArpitSizes.cardRadiusMd),
                      bottomRight:
                          Radius.circular(ArpitSizes.productImageRadius),
                    ), // BorderRadius.only
                  ), // BoxDecoration
                  child: const SizedBox(
                    width: ArpitSizes.iconLg * 1.2,
                    height: ArpitSizes.iconLg * 1.2,
                    child: Center(
                        child: Icon(Icons.add, color: ArpitColors.white)),
                  ), // SizedBox
                ), // Container
              ],
            ),
          ],
        ),
      ),
    );
  }
}
