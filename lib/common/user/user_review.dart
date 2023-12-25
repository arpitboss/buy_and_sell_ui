import 'package:buy_and_sell_ui/common/user/rating_indicator.dart';
import 'package:buy_and_sell_ui/common/widgets/helper.dart';
import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../utils/colors.dart';
import '../../utils/image_strings.dart';
import '../widgets/circular_container.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = ArpitHelper.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(ArpitImages.userProfileImage2),
                ),
                const SizedBox(
                  width: ArpitSizes.spaceBtwItems,
                ),
                Text(
                  'Arpit Verma',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
        const SizedBox(
          height: ArpitSizes.spaceBtwItems,
        ),
        Row(
          children: [
            const ReusableRatingIndicator(rating: 4),
            const SizedBox(
              width: ArpitSizes.spaceBtwItems,
            ),
            const Icon(
              Icons.access_time,
              size: 15,
            ),
            const SizedBox(
              width: ArpitSizes.sm / 2,
            ),
            Text(
              '13 Dec, 2023',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        const SizedBox(
          height: ArpitSizes.spaceBtwItems,
        ),
        const ReadMoreText(
          'The Reviews are very helpful to determine the authenticity of the product and customer will believe more in the product ',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'Read More',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
        const SizedBox(
          height: ArpitSizes.spaceBtwItems,
        ),
        CircularContainer(
          backgroundColor: dark ? ArpitColors.darkerGrey : ArpitColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ArpitSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'buy_and_sell',
                      style: Theme.of(context).textTheme.titleMedium,
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
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: ArpitSizes.spaceBtwItems,
                ),
                const ReadMoreText(
                  'The Reviews are very helpful to determine the authenticity of the product and customer will believe more in the product ',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'Read More',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: ArpitSizes.spaceBtwSections,
        )
      ],
    );
  }
}
