import 'package:buy_and_sell_ui/common/widgets/helper.dart';
import 'package:buy_and_sell_ui/home.dart';
import 'package:buy_and_sell_ui/utils/colors.dart';
import 'package:buy_and_sell_ui/utils/image_strings.dart';
import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart.dart';
import 'common/widgets/circular_container.dart';
import 'common/widgets/custom_appbar.dart';
import 'common/widgets/section_heading.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ArpitHelper.isDarkMode(context);
    return Scaffold(
      appBar: ReusableAppBar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ArpitSizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwSections / 2,
              ),
              const CouponCode(),
              const SizedBox(
                height: ArpitSizes.spaceBtwSections,
              ),
              CircularContainer(
                padding: const EdgeInsets.all(ArpitSizes.md),
                showBorder: true,
                backgroundColor: dark ? Colors.black : Colors.white,
                child: const Column(
                  children: [
                    BillingAmount(),
                    SizedBox(
                      height: ArpitSizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: ArpitSizes.spaceBtwItems,
                    ),
                    BillingPayment(),
                    SizedBox(
                      height: ArpitSizes.spaceBtwItems,
                    ),
                    BillingAddress(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ArpitSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => SuccessScreen(
                  image: ArpitImages.successfulPaymentIcon,
                  title: 'Payment Successful',
                  subtitle: 'Your Item will be shipped soon...',
                  onPressed1: () {
                    Get.offAll(() => const HomeScreen());
                  },
                  onPressed2: () {
                    Get.to(() => const AddToCartScreen());
                  },
                ));
          },
          child: const Text('Checkout ₹998.0'),
        ),
      ),
    );
  }
}

class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          headingText: 'Shipping Addr..',
          buttonText: 'change'
              '',
          onPressed: () {},
        ),
        Text(
          'Arpit Verma',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: ArpitSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              CupertinoIcons.phone,
              size: 16,
              color: Colors.grey,
            ),
            const SizedBox(
              width: ArpitSizes.spaceBtwItems,
            ),
            Text(
              '+91 7678607016',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: ArpitSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history_rounded,
              size: 16,
              color: Colors.grey,
            ),
            const SizedBox(
              width: ArpitSizes.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                'XYZ Company hello world this is me here checking out',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BillingAmount extends StatelessWidget {
  const BillingAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '₹499.0',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: ArpitSizes.spaceBtwItems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '₹10.0',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(
          height: ArpitSizes.spaceBtwItems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '₹25.0',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(
          height: ArpitSizes.spaceBtwItems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Total',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '₹534.0',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        const SizedBox(
          height: ArpitSizes.spaceBtwItems / 2,
        ),
      ],
    );
  }
}

class BillingPayment extends StatelessWidget {
  const BillingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ArpitHelper.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          onPressed: () {},
          headingText: 'Payment',
          buttonText: 'change',
        ),
        Row(
          children: [
            CircularContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? ArpitColors.light : ArpitColors.white,
              padding: const EdgeInsets.all(ArpitSizes.sm),
              child: const Image(
                image: AssetImage(
                  ArpitImages.paytm,
                ),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: ArpitSizes.spaceBtwItems / 2,
            ),
            Text(
              'Paytm',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        )
      ],
    );
  }
}

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed1,
      required this.onPressed2});

  final String image, title, subtitle;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
                  top: ArpitSizes.appBarHeight,
                  left: ArpitSizes.defaultSpace,
                  bottom: ArpitSizes.defaultSpace,
                  right: ArpitSizes.defaultSpace) *
              2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: MediaQuery.of(Get.context!).size.width * 0.6,
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwSections,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed1,
                  child: const Text('Continue Shopping'),
                ),
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwSections * 4,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100]),
                  onPressed: onPressed2,
                  child: const Text('Go To Orders'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ArpitHelper.isDarkMode(context);
    return CircularContainer(
      showBorder: true,
      backgroundColor: dark ? ArpitColors.dark : Colors.white,
      padding: const EdgeInsets.only(
        left: ArpitSizes.md,
        top: ArpitSizes.sm,
        right: ArpitSizes.sm,
        bottom: ArpitSizes.sm,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter the Coupon Code',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
              width: 90,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? ArpitColors.white.withOpacity(0.5)
                          : ArpitColors.dark.withOpacity(0.5),
                      backgroundColor: ArpitColors.grey.withOpacity(0.8),
                      side:
                          BorderSide(color: ArpitColors.grey.withOpacity(0.1))),
                  onPressed: () {},
                  child: const Text('Apply')))
        ],
      ),
    );
  }
}
