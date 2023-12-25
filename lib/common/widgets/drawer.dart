import 'package:buy_and_sell_ui/cart.dart';
import 'package:buy_and_sell_ui/home.dart';
import 'package:buy_and_sell_ui/settings.dart';
import 'package:buy_and_sell_ui/utils/image_strings.dart';
import 'package:buy_and_sell_ui/utils/sizes.dart';
import 'package:buy_and_sell_ui/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final double drawerWidth = MediaQuery.of(context).size.width / 6;
    return Drawer(
      child: SizedBox(
        width: drawerWidth,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(ArpitImages.userProfileImage2),
                  ),
                  SizedBox(
                    width: ArpitSizes.spaceBtwItems,
                  ),
                  Text(
                    'Arpit Verma',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Get.offAll(() => const HomeScreen());
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Get.to(() => const SettingsScreen());
              },
            ), // Add more ListTile widgets for additional items
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Wishlist'),
              onTap: () {
                Get.to(() => const WishlistScreen());
              },
            ), // Add more ListTile widgets for additional items
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('My Orders'),
              onTap: () {
                Get.to(() => const AddToCartScreen());
              },
            ), // Add more ListTile widgets for additional items
          ],
        ),
      ),
    );
  }
}
