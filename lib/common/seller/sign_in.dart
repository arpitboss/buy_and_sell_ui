import 'package:buy_and_sell_ui/common/seller/sign_up.dart';
import 'package:buy_and_sell_ui/seller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ArpitSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeader(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Login',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          height: ArpitSizes.sm,
        ),
        Text(
          'Welcome Back !!',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: ArpitSizes.spaceBtwSections),
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
                  prefixIcon: const Icon(
                    Icons.email,
                  ),
                  labelText: 'Email'),
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
                prefixIcon: const Icon(
                  Icons.password,
                ),
                labelText: 'Password',
                suffixIcon: const Icon(Icons.remove_red_eye),
              ),
            ),
            const SizedBox(
              height: ArpitSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text('Remember Me'),
                  ],
                ),
                // TextButton(
                // onPressed: () {
                //   Get.to(() => const ForgetPasswordScreen());
                // },
                //     child: const Text(TTexts.forgetPassword)),
              ],
            ),
            const SizedBox(
              height: ArpitSizes.spaceBtwInputFields,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const SellerScreen());
                },
                child: const Text('Sign In'),
              ),
            ),
            const SizedBox(
              height: ArpitSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
                  Get.to(() => const SignUpScreen());
                },
                child: const Text('Create Account'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
