import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ArpitSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(
                height: ArpitSizes.spaceBtwSections,
              ),
              const SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder().copyWith(
                      borderRadius:
                          BorderRadius.circular(ArpitSizes.inputFieldRadius),
                      borderSide: const BorderSide(
                        width: 1,
                        color: ArpitColors.grey,
                      ),
                    ),
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'First Name',
                  ),
                ),
              ),
              const SizedBox(
                width: ArpitSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder().copyWith(
                      borderRadius:
                          BorderRadius.circular(ArpitSizes.inputFieldRadius),
                      borderSide: const BorderSide(
                        width: 1,
                        color: ArpitColors.grey,
                      ),
                    ),
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'Last Name',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: ArpitSizes.spaceBtwInputFields * 2,
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
                prefixIcon: const Icon(Icons.email),
                labelText: 'Email'),
          ),
          const SizedBox(
            height: ArpitSizes.spaceBtwInputFields,
          ),
          const SizedBox(
            height: ArpitSizes.spaceBtwInputFields,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                border: const OutlineInputBorder().copyWith(
                  borderRadius:
                      BorderRadius.circular(ArpitSizes.inputFieldRadius),
                  borderSide: const BorderSide(
                    width: 1,
                    color: ArpitColors.grey,
                  ),
                ),
                prefixIcon: const Icon(Icons.password),
                suffixIcon: const Icon(Icons.remove_red_eye),
                labelText: 'Password'),
          ),
          const SizedBox(
            height: ArpitSizes.spaceBtwItems,
          ),
          const SizedBox(
            height: ArpitSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Get.to(() => const VerifyEmailScreen());
              },
              child: const Text('Create Account'),
            ),
          ),
        ],
      ),
    );
  }
}
