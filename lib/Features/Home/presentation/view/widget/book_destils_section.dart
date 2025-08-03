import 'package:bookly_app/Features/Home/presentation/view/widget/booking_rating.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/custom_book_image_item.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: const CustomBookImageItem(),
        ),
        const Gap(38),
        const Text(
          "The Jungle Book",
          style: Style.textFont32,
        ),
        const Gap(6),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Style.textFont20.copyWith(
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const Gap(18),
        const BookingRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
