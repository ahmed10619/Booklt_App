import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/view/book_action.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/appbar_book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/book_destils_section.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const AppBarBookDetailsView(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Gap(20),
                const BookActions(),
                const Expanded(child: Gap(50)),
                const SimailarBookSection(),
                const Gap(16),
              ],
            ),
          ),
        )
      ],
    );
  }
}
