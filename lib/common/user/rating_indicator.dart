import 'package:buy_and_sell_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReusableRatingIndicator extends StatelessWidget {
  const ReusableRatingIndicator({
    super.key,
    required this.rating,
    this.size = 15,
  });

  final double rating;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: size,
      unratedColor: ArpitColors.grey,
      itemBuilder: (_, __) => Icon(
        Icons.star,
        color: Colors.orange[800],
      ),
    );
  }
}
