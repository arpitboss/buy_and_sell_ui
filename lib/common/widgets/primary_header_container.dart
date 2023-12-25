import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'circular_container.dart';
import 'custom_edge_widget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomEdgeWidget(
      child: Container(
        color: Colors.deepPurple,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  width: 400,
                  height: 400,
                  backgroundColor: ArpitColors.textWhite.withOpacity(0.1),
                  radius: 400,
                )),
            Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  width: 400,
                  height: 400,
                  backgroundColor: ArpitColors.textWhite.withOpacity(0.1),
                  radius: 400,
                )),
            child,
          ],
        ),
      ),
    );
  }
}
