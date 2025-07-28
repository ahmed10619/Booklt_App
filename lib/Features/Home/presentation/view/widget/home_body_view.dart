import 'package:bookly_app/Features/Home/presentation/view/widget/custom_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/featured_list_books.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturesListBooks(),
          Gap(50),
          Text(
            "Best Saller",
            style: Style.titleMedium,
          ),
        ],
      ),
    );
  }
}
