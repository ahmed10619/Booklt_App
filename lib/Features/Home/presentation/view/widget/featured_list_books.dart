import 'package:bookly_app/Features/Home/presentation/view/widget/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class FeaturesListBooks extends StatelessWidget {
  const FeaturesListBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomBookImageItem(),
          );
        },
      ),
    );
  }
}
