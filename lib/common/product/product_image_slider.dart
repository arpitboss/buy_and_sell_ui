import 'package:buy_and_sell_ui/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/image_strings.dart';
import '../../utils/sizes.dart';
import '../widgets/rounded_image.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
          physics: const AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => RoundedImage(
              width: 80,
              border: Border.all(color: Colors.deepPurple),
              padding: const EdgeInsets.all(ArpitSizes.sm),
              bgColor: ArpitColors.light,
              imageUrl: ArpitImages.productImage5),
          separatorBuilder: (_, __) => const SizedBox(
                width: ArpitSizes.spaceBtwItems,
              ),
          itemCount: 10),
    );
  }
}
