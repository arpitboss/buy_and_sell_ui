import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/sizes.dart';
import 'helper.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    this.icon = CupertinoIcons.search,
    this.showBackground = true,
    this.showBorder = true,
    required this.text,
    this.padding =
        const EdgeInsets.symmetric(horizontal: ArpitSizes.defaultSpace / 1.5),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final darkMode = ArpitHelper.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(ArpitSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? darkMode
                    ? ArpitColors.dark
                    : ArpitColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(ArpitSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: ArpitColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: ArpitColors.darkerGrey,
              ),
              const SizedBox(
                width: ArpitSizes.defaultSpace / 2,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium!,
              ),
            ],
          )),
    );
  }
}
