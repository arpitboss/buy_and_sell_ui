import 'package:buy_and_sell_ui/common/user/rating_indicator.dart';
import 'package:buy_and_sell_ui/common/widgets/custom_appbar.dart';
import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class AddReviews extends StatelessWidget {
  const AddReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReusableAppBar(
        title: Text('Add Review'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(ArpitSizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder().copyWith(
                      borderRadius:
                          BorderRadius.circular(ArpitSizes.inputFieldRadius),
                      borderSide:
                          const BorderSide(width: 1, color: ArpitColors.grey),
                    ),
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'Name'),
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwInputFields,
              ),
              TextFormField(
                expands: false,
                maxLines: 6,
                minLines: 6,
                decoration: InputDecoration(
                  border: const OutlineInputBorder().copyWith(
                    borderRadius:
                        BorderRadius.circular(ArpitSizes.inputFieldRadius),
                    borderSide: const BorderSide(
                      width: 1,
                      color: ArpitColors.grey,
                    ),
                  ),
                  // prefixIcon: const Icon(Icons.verified_user),
                  labelText: 'How was your experience ?',
                ),
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwInputFields * 2,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Give Stars'),
                  SizedBox(
                    height: ArpitSizes.spaceBtwItems / 2,
                  ),
                  ReusableRatingIndicator(
                    rating: 4.5,
                    size: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwSections,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit Review'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
