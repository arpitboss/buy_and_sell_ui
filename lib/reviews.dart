import 'package:buy_and_sell_ui/common/user/add_review.dart';
import 'package:buy_and_sell_ui/utils/colors.dart';
import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/user/rating_indicator.dart';
import 'common/user/user_rating.dart';
import 'common/user/user_review.dart';
import 'common/widgets/custom_appbar.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReusableAppBar(
        bgColor: Colors.white,
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: ArpitSizes.defaultSpace,
              right: ArpitSizes.defaultSpace,
              bottom: ArpitSizes.defaultSpace,
              top: ArpitSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'The Reviews are very helpful to determine the authenticity of the product and customer will believe more in the product'),
              const SizedBox(
                height: ArpitSizes.spaceBtwItems,
              ),
              const OverallProductRating(),
              const SizedBox(
                height: ArpitSizes.spaceBtwItems / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ReusableRatingIndicator(
                        rating: 4.5,
                      ),
                      Text(
                        ' 11,650',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple[500]),
                    onPressed: () {
                      Get.to(() => const AddReviews());
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.rate_review_outlined,
                          color: ArpitColors.white,
                        ),
                        SizedBox(
                          width: ArpitSizes.sm,
                        ),
                        Text(
                          'Add Review',
                          style: TextStyle(color: ArpitColors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwSections / 2,
              ),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
