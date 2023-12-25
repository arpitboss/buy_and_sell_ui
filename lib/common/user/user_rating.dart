import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.5',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const SizedBox(
          width: ArpitSizes.spaceBtwSections,
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(
                text: '5',
                value: 1.0,
              ),
              RatingProgressIndicator(
                text: '4',
                value: 0.8,
              ),
              RatingProgressIndicator(
                text: '3',
                value: 0.6,
              ),
              RatingProgressIndicator(
                text: '2',
                value: 0.4,
              ),
              RatingProgressIndicator(
                text: '1',
                value: 0.2,
              ),
              SizedBox(
                height: ArpitSizes.spaceBtwItems,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: LinearProgressIndicator(
              value: value,
              valueColor: AlwaysStoppedAnimation(Colors.orange[800]),
              minHeight: 11,
              backgroundColor: ArpitColors.grey,
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}
