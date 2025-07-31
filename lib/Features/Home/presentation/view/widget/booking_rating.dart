import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class BookingRating extends StatelessWidget {
  const BookingRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
        ),
        const Gap(6.5),
        const Text(
          "4.9",
          style: Style.textFont17,
        ),
        const Gap(5),
        Text(
          "(254)",
          style: Style.textFont15.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
