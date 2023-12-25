import 'package:buy_and_sell_ui/checkout.dart';
import 'package:buy_and_sell_ui/common/product/product_image_slider.dart';
import 'package:buy_and_sell_ui/common/user/rating_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:readmore/readmore.dart';

import '../../cart.dart';
import '../../reviews.dart';
import '../../utils/colors.dart';
import '../../utils/image_strings.dart';
import '../../utils/sizes.dart';
import '../widgets/section_heading.dart';
import 'bottom_add_to_cart.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Stack(children: [
                  Container(
                    color: ArpitColors.light,
                    height: 400,
                    child: const Padding(
                      padding:
                          EdgeInsets.all(ArpitSizes.productImageRadius * 2),
                      child: Center(
                          child: Image(
                              image: AssetImage(ArpitImages.productImage5))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: ArpitSizes.defaultSpace * 2,
                        left: ArpitSizes.md,
                        right: ArpitSizes.md),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: ArpitColors.white,
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: ArpitColors.white,
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(Icons.shopping_cart),
                              onPressed: () {
                                Get.to(() => const AddToCartScreen());
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.only(
                      top: ArpitSizes.defaultSpace,
                      left: ArpitSizes.defaultSpace / 2,
                      right: ArpitSizes.defaultSpace / 2,
                      bottom: ArpitSizes.defaultSpace),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 1, right: ArpitSizes.md),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Men's Printed PullOver Hoodie",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Text(
                                  'Price',
                                  style: Theme.of(context).textTheme.bodySmall,
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: ArpitSizes.sm),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Nike Club Fleece ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 24),
                                ),
                                Text(
                                  '₹249',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 24),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: ArpitSizes.spaceBtwItems / 2,
                      ),
                      const ProductImageSlider(),
                      const SizedBox(
                        height: ArpitSizes.spaceBtwSections,
                      ),
                      const SectionHeading(
                        headingText: 'Description',
                        showActionButton: false,
                      ),
                      const SizedBox(
                        height: ArpitSizes.spaceBtwItems / 2,
                      ),
                      const ReadMoreText(
                        'The Nike Pull Over Hoodie is very comfortable when it comes to user reviews and it is available in different sizes and colors.'
                        ' The users can buy these clothes which are made from pure cotton and packaged with safety and comfort ',
                        style: TextStyle(fontWeight: FontWeight.w300),
                        trimLines: 2,
                        trimCollapsedText: 'Read More',
                        trimExpandedText: 'show less',
                        trimMode: TrimMode.Line,
                        moreStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: Colors.deepPurple),
                        lessStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: Colors.deepPurple),
                      ),
                      const SizedBox(
                        height: ArpitSizes.spaceBtwItems,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const CheckoutScreen());
                          },
                          child: const Text('CheckOut'),
                        ),
                      ),
                      const SizedBox(
                        height: ArpitSizes.spaceBtwItems,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: ArpitSizes.spaceBtwItems,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SectionHeading(
                            headingText: 'Reviews(363)',
                            showActionButton: false,
                          ),
                          IconButton(
                              onPressed: () {
                                Get.to(() => const ProductReviewsScreen());
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: ArpitSizes.spaceBtwItems,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 20,
                                    foregroundImage: AssetImage(
                                        ArpitImages.userProfileImage2),
                                  ),
                                  const SizedBox(
                                    width: ArpitSizes.spaceBtwItems / 2,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Arpit Verma',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      const SizedBox(
                                        height: ArpitSizes.spaceBtwItems / 3,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.access_time,
                                            size: 15,
                                          ),
                                          const SizedBox(
                                            width: ArpitSizes.sm / 2,
                                          ),
                                          Text(
                                            '13 Dec, 2023',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '4.5',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      const SizedBox(
                                        width: ArpitSizes.spaceBtwItems / 2,
                                      ),
                                      Text(
                                        'rating',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: ArpitSizes.spaceBtwItems / 3,
                                  ),
                                  const ReusableRatingIndicator(
                                    rating: 4.5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: ArpitSizes.spaceBtwItems,
                          ),
                          const ReadMoreText(
                            'The Nike Pull Over Hoodie is very comfortable when it comes to user reviews and it is available in different sizes and colors.'
                            ' The users can buy these clothes which are made from pure cotton and packaged with safety and comfort ',
                            style: TextStyle(fontWeight: FontWeight.w300),
                            trimLines: 3,
                            trimCollapsedText: 'Read More',
                            trimExpandedText: 'show less',
                            trimMode: TrimMode.Line,
                            moreStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Colors.deepPurple),
                            lessStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                                color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
