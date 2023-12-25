import 'package:buy_and_sell_ui/common/widgets/helper.dart';
import 'package:buy_and_sell_ui/utils/colors.dart';
import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'common/widgets/circular_container.dart';
import 'common/widgets/custom_appbar.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {
            Get.to(() => const AddNewAddressScreen());
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      appBar: ReusableAppBar(
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ReusableAppBar(
        title: Text(
          'Add New Address',
        ),
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
                      borderSide: const BorderSide(
                        width: 1,
                        color: ArpitColors.grey,
                      ),
                    ),
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Name'),
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder().copyWith(
                      borderRadius:
                          BorderRadius.circular(ArpitSizes.inputFieldRadius),
                      borderSide: const BorderSide(
                        width: 1,
                        color: ArpitColors.grey,
                      ),
                    ),
                    prefixIcon: Icon(Icons.call),
                    labelText: 'Phone'),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(
                                ArpitSizes.inputFieldRadius),
                            borderSide: const BorderSide(
                              width: 1,
                              color: ArpitColors.grey,
                            ),
                          ),
                          prefixIcon: Icon(Icons.integration_instructions),
                          labelText: 'Street'),
                    ),
                  ),
                  const SizedBox(
                    width: ArpitSizes.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(
                                ArpitSizes.inputFieldRadius),
                            borderSide: const BorderSide(
                              width: 1,
                              color: ArpitColors.grey,
                            ),
                          ),
                          prefixIcon: Icon(Icons.code),
                          labelText: 'Postal Code'),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(
                                ArpitSizes.inputFieldRadius),
                            borderSide: const BorderSide(
                              width: 1,
                              color: ArpitColors.grey,
                            ),
                          ),
                          prefixIcon: Icon(CupertinoIcons.building_2_fill),
                          labelText: 'City'),
                    ),
                  ),
                  const SizedBox(
                    width: ArpitSizes.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: const OutlineInputBorder().copyWith(
                            borderRadius: BorderRadius.circular(
                                ArpitSizes.inputFieldRadius),
                            borderSide: const BorderSide(
                              width: 1,
                              color: ArpitColors.grey,
                            ),
                          ),
                          prefixIcon: Icon(Icons.local_activity_rounded),
                          labelText: 'State'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwInputFields,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: const OutlineInputBorder().copyWith(
                      borderRadius:
                          BorderRadius.circular(ArpitSizes.inputFieldRadius),
                      borderSide: const BorderSide(
                        width: 1,
                        color: ArpitColors.grey,
                      ),
                    ),
                    prefixIcon: const Icon(CupertinoIcons.globe),
                    labelText: 'Country'),
              ),
              const SizedBox(
                height: ArpitSizes.defaultSpace * 2,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = ArpitHelper.isDarkMode(context);
    return CircularContainer(
      padding: const EdgeInsets.all(ArpitSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? Colors.deepPurple.withOpacity(0.6)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? ArpitColors.darkerGrey
              : ArpitColors.grey,
      margin: const EdgeInsets.only(bottom: ArpitSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Icons.check_circle : null,
              color: selectedAddress
                  ? dark
                      ? ArpitColors.light
                      : ArpitColors.dark.withOpacity(0.9)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Arpit Verma',
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: ArpitSizes.sm / 2),
              const Text(
                '+91 7678607016',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: ArpitSizes.sm / 2),
              const Text(
                'xyz, company hello everyone i"m arpit verma',
                softWrap: true,
              ),
              const SizedBox(
                height: ArpitSizes.sm / 2,
              )
            ],
          ),
        ],
      ),
    );
  }
}
