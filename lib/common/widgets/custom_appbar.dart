import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import 'circular_icon.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReusableAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.bgColor});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: AppBar(
        backgroundColor: bgColor,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: ArpitColors.dark,
                ))
            : leadingIcon != null
                ? const CircularIcon(
                    icon: Icons.horizontal_split,
                    color: ArpitColors.black,
                  )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
