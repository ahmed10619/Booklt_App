import 'package:bookly_app/Features/Home/presentation/view/book_action.dart';
import 'package:bookly_app/Features/Home/presentation/view/similar_book_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/appbar_book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/booking_rating.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/custom_book_image_item.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const AppBarBookDetailsView(),
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
                const Gap(20),
                const BookActions(),
                const Expanded(child: Gap(50)),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You Can Also Like',
                    style: Style.textFont17,
                  ),
                ),
                const Gap(16),
                const SimilarBookListView(),
                const Gap(16),
              ],
            ),
          ),
        )
      ],
    );
  }
}
