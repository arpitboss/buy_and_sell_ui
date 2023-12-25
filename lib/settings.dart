import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'address.dart';
import 'common/widgets/custom_appbar.dart';
import 'common/widgets/primary_header_container.dart';
import 'common/widgets/section_heading.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  ReusableAppBar(
                    title: Text(
                      'Settings',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Colors.black),
                    ),
                    showBackArrow: true,
                  ),
                  // UserProfileTile(
                  //   onPressed: () => Get.to(() => const ProfileScreen()),
                  // ),
                  const SizedBox(
                    height: ArpitSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(ArpitSizes.defaultSpace / 2),
              child: Column(
                children: [
                  const SectionHeading(
                    headingText: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: ArpitSizes.spaceBtwItems,
                  ),
                  SettingsMenu(
                      icon: Icons.home_filled,
                      title: 'My Addresses',
                      subtitle: 'Set shopping delivery address',
                      onTap: () => Get.to(() => const UserAddressScreen())),
                  const SettingsMenu(
                      icon: Icons.shopping_cart_rounded,
                      title: 'My Cart',
                      subtitle: 'Add, remove products and move to checkout'),
                  const SettingsMenu(
                    icon: Icons.shopping_bag_sharp,
                    title: 'My Orders',
                    subtitle: 'In-progress and Completed Orders',
                    // onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const SettingsMenu(
                      icon: Icons.comment_bank,
                      title: 'Bank Account',
                      subtitle: 'Withdraw balance to registered bank account'),
                  const SettingsMenu(
                      icon: Icons.discount_rounded,
                      title: 'My Coupons',
                      subtitle: 'List of all the discounted coupons'),
                  const SettingsMenu(
                      icon: Icons.notifications,
                      title: 'Notifications',
                      subtitle: 'Set any kind of notification message'),
                  const SettingsMenu(
                      icon: Icons.system_security_update_good_rounded,
                      title: 'Account Privacy',
                      subtitle: 'Manage data usage and connected accounts'),

                  /// App Settings
                  const SizedBox(height: ArpitSizes.spaceBtwSections),
                  const SectionHeading(
                    showActionButton: false,
                    headingText: 'App Settings',
                  ),
                  const SizedBox(height: ArpitSizes.spaceBtwItems),
                  const SettingsMenu(
                      icon: Icons.upload_file_outlined,
                      title: 'Load Data',
                      subtitle: 'Upload Data to your Cloud Firebase'),
                  SettingsMenu(
                    icon: Icons.location_pin,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ), // TSettingsMenuTile
                  // TSettings MenuTile
                  const SizedBox(
                    height: ArpitSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(
                    height: ArpitSizes.spaceBtwSections * 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsMenu extends StatelessWidget {
  const SettingsMenu(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      this.trailing,
      this.onTap});

  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: Colors.deepPurple),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
