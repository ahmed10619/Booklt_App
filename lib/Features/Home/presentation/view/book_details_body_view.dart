import 'package:bookly_app/Features/Home/presentation/view/widget/appbar_book_details_view.dart';
import 'package:flutter/material.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          AppBarBookDetailsView(),
        ],
      ),
    );
  }
}
