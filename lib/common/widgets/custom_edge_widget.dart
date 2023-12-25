import 'package:flutter/material.dart';

import 'curved_edges.dart';

class CustomEdgeWidget extends StatelessWidget {
  const CustomEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}
