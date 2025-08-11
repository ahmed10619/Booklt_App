import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/booking_rating.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/custom_book_image_item.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kHomeDetailsView),
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: CustomBookImageItem(
                imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),

            // ),
          ),
          const Gap(30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    bookModel.volumeInfo.title!,
                    style: Style.textFont22.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                ),
                const Gap(4),
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: Style.textFont15,
                ),
                const Gap(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Free",
                      style: Style.textFont22
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const BookingRating(
                      rateing: 0,
                      rateCount: 0,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
