import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/booking_rating.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/custom_book_image_item.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: CustomBookImageItem(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const Gap(38),
        Text(
          bookModel.volumeInfo.title!,
          style: Style.textFont32,
          textAlign: TextAlign.center,
        ),
        const Gap(6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Style.textFont20.copyWith(
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const Gap(18),
        const BookingRating(
          rateCount: 0,
          rateing: 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
