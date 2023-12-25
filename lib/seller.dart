import 'package:buy_and_sell_ui/common/widgets/grid_layout.dart';
import 'package:buy_and_sell_ui/common/widgets/section_heading.dart';
import 'package:buy_and_sell_ui/utils/colors.dart';
import 'package:buy_and_sell_ui/utils/image_strings.dart';
import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/material.dart';

import 'common/brand/brand_title.dart';
import 'common/product/product_price.dart';
import 'common/product/product_title.dart';
import 'common/widgets/circular_container.dart';
import 'common/widgets/rounded_image.dart';
import 'common/widgets/shadow_style.dart';

class SellerScreen extends StatelessWidget {
  const SellerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sell',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(ArpitSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ArpitColors.primary),
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Add Products',
                      style: TextStyle(color: ArpitColors.white, fontSize: 16),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: ArpitColors.white,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: ArpitSizes.spaceBtwSections,
            ),
            const SectionHeading(
              headingText: 'My Products',
              showActionButton: true,
            ),
            GridLayout(
              itemCount: 10,
              itemBuilder: (_, index) => GestureDetector(
                // onTap: () => Get.to(() => const ProductDetailsScreen()),
                child: Container(
                  width: 180,
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    boxShadow: [ShadowStyle.verticalProductShadow],
                    borderRadius:
                        BorderRadius.circular(ArpitSizes.productImageRadius),
                    color: ArpitColors.white,
                  ),
                  child: Column(
                    children: [
                      CircularContainer(
                        height: 123,
                        padding: const EdgeInsets.all(ArpitSizes.sm),
                        backgroundColor: ArpitColors.light,
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
                                backgroundColor:
                                    ArpitColors.secondary.withOpacity(0.8),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: ArpitSizes.sm,
                                    vertical: ArpitSizes.xs),
                                child: Text(
                                  '75%',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .apply(color: ArpitColors.black),
                                ),
                              ),
                            ),
                            // const Positioned(
                            //   top: 0,
                            //   right: 0,
                            //   child: CircularIcon(
                            //     color: Colors.red,
                            //     icon: Icons.favorite,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: ArpitSizes.spaceBtwItems / 2,
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: ArpitSizes.sm),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: ArpitSizes.sm),
                            child: ProductPriceText(
                              price: '499',
                            ),
                          ),
                          // Text
                          // Container(
                          //   decoration: const BoxDecoration(
                          //     color: Colors.deepPurple,
                          //     borderRadius: BorderRadius.only(
                          //       topLeft:
                          //           Radius.circular(ArpitSizes.cardRadiusMd),
                          //       bottomRight: Radius.circular(
                          //           ArpitSizes.productImageRadius),
                          //     ), // BorderRadius.only
                          //   ), // BoxDecoration
                          //   child: const SizedBox(
                          //     width: ArpitSizes.iconLg * 1.2,
                          //     height: ArpitSizes.iconLg * 1.2,
                          //     child: Center(
                          //       child:
                          //           Icon(Icons.add, color: ArpitColors.white),
                          //     ),
                          //   ), // SizedBox
                          // ), // Container
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
