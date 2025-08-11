import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class BookingRating extends StatelessWidget {
  const BookingRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rateing,
      required this.rateCount});

  final MainAxisAlignment mainAxisAlignment;
  final int rateing;
  final int rateCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        const Gap(7),
        Text(
          "$rateing",
          style: Style.textFont17,
        ),
        const Gap(5),
        Opacity(
          opacity: 0.5,
          child: Text(
            "($rateCount)",
            style: Style.textFont15,
          ),
        ),
      ],
    );
  }
}
