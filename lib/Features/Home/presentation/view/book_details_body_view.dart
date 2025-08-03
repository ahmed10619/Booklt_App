import 'package:bookly_app/Features/Home/presentation/view/book_action.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/appbar_book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/book_destils_section.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                AppBarBookDetailsView(),
                BookDetailsSection(),
                Gap(20),
                BookActions(),
                Expanded(child: Gap(50)),
                SimailarBookSection(),
                Gap(16),
              ],
            ),
          ),
        )
      ],
    );
  }
}
