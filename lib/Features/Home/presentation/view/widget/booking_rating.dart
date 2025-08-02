import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class BookingRating extends StatelessWidget {
  const BookingRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 16,
        ),
        Gap(7),
        Text(
          "4.9",
          style: Style.textFont17,
        ),
        Gap(5),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(254)",
            style: Style.textFont15,
          ),
        ),
      ],
    );
  }
}
