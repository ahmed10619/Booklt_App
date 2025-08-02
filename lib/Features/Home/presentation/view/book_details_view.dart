import 'package:bookly_app/Features/Home/presentation/view/book_details_body_view.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: BookDetailsBodyView(),
      ),
    );
  }
}
