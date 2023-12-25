import 'package:buy_and_sell_ui/cart.dart';
import 'package:buy_and_sell_ui/common/seller/sign_in.dart';
import 'package:buy_and_sell_ui/common/widgets/drawer.dart';
import 'package:buy_and_sell_ui/utils/colors.dart';
import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/product/product_card_vertical.dart';
import 'common/widgets/custom_appbar.dart';
import 'common/widgets/grid_layout.dart';
import 'common/widgets/primary_header_container.dart';
import 'common/widgets/search_container.dart';
import 'common/widgets/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    List<bool> favoriteStates = List.generate(4, (index) => false);
    return Scaffold(
      drawer: const SideDrawer(),
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(children: [
                const SizedBox(
                  height: ArpitSizes.defaultSpace,
                ),
                ReusableAppBar(
                  bgColor: Colors.deepPurple,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: ArpitColors.light,
                        ),
                        child: IconButton(
                          icon: const Icon(CupertinoIcons.sidebar_left),
                          onPressed: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                        ),
                      ),
                      const SizedBox(
                        width: ArpitSizes.spaceBtwItems,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Day',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(color: ArpitColors.white),
                          ),
                          Text(
                            'Arpit Verma',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .apply(color: ArpitColors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: ArpitSizes.sm),
                      child: Stack(children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: ArpitColors.light,
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
                        Positioned(
                            right: -4,
                            top: -1,
                            child: SizedBox(
                                width: 20,
                                height: 20,
                                child: Text(
                                  '2',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ))),
                      ]),
                    )
                  ],
                ),
                const SizedBox(
                  height: ArpitSizes.spaceBtwSections,
                ),
                const SearchContainer(text: 'Search in Shop...'),
                const SizedBox(
                  height: ArpitSizes.spaceBtwSections / 1.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: ArpitSizes.defaultSpace),
                  child: Column(children: [
                    Row(
                      children: [
                        const SectionHeading(
                          headingText: 'Announcements',
                          showActionButton: false,
                          textColor: ArpitColors.white,
                        ),
                        const SizedBox(
                          width: ArpitSizes.spaceBtwItems * 2,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Get.to(() => const LoginScreen());
                            },
                            child: const Text('Seller'))
                      ],
                    ),
                    const SizedBox(
                      height: ArpitSizes.spaceBtwItems / 2,
                    ),
                  ]),
                ),
                const SizedBox(
                  height: ArpitSizes.spaceBtwSections,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: ArpitSizes.defaultSpace,
                  right: ArpitSizes.defaultSpace,
                  bottom: ArpitSizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                    headingText: 'New Arrival',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: ArpitSizes.spaceBtwItems,
                  ),
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
