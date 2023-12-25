import 'package:buy_and_sell_ui/utils/colors.dart';
import 'package:buy_and_sell_ui/utils/image_strings.dart';
import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'checkout.dart';
import 'common/brand/brand_title.dart';
import 'common/product/product_price.dart';
import 'common/product/product_title.dart';
import 'common/widgets/circular_icon.dart';
import 'common/widgets/custom_appbar.dart';
import 'common/widgets/helper.dart';
import 'common/widgets/rounded_image.dart';

class AddToCartScreen extends StatelessWidget {
  const AddToCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(ArpitSizes.defaultSpace),
        child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ArpitSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const CheckoutScreen());
          },
          child: const Text('Checkout ₹998.0'),
        ),
      ),
    );
  }
}

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: ArpitSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const CartItem(),
          if (showAddRemoveButton)
            const SizedBox(
              height: ArpitSizes.spaceBtwItems,
            ),
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    AddRemoveButton(),
                  ],
                ),
                ProductPriceText(price: '499')
              ],
            ),
          const SizedBox(
            height: ArpitSizes.spaceBtwItems,
          )
        ],
      ),
    );
  }
}

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: CupertinoIcons.minus,
          width: 32,
          height: 32,
          size: ArpitSizes.md,
          color: ArpitHelper.isDarkMode(context)
              ? ArpitColors.white
              : ArpitColors.black,
          backgroundColor: ArpitHelper.isDarkMode(context)
              ? ArpitColors.darkerGrey
              : ArpitColors.light,
        ),
        const SizedBox(
          width: ArpitSizes.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          width: ArpitSizes.spaceBtwItems,
        ),
        const CircularIcon(
            icon: Icons.add,
            width: 32,
            height: 32,
            size: ArpitSizes.md,
            color: ArpitColors.white,
            backgroundColor: Colors.deepPurple),
      ],
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
          imageUrl: ArpitImages.productImage8,
          width: 60,
          height: 60,
          bgColor: ArpitHelper.isDarkMode(context)
              ? ArpitColors.darkerGrey
              : ArpitColors.light,
          padding: const EdgeInsets.all(ArpitSizes.sm),
        ),
        const SizedBox(
          width: ArpitSizes.spaceBtwItems,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                child: ProductTitleText(
                  title: 'Sports Shoes White',
                  maxLines: 1,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Color ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'Pink ',
                        style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(
                        text: 'Size ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                        text: 'UK 47 ',
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
