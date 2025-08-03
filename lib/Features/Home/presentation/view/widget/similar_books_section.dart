import 'package:bookly_app/Features/Home/presentation/view/similar_book_list_view.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SimailarBookSection extends StatelessWidget {
  const SimailarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'You Can Also Like',
          style: Style.textFont17,
        ),
        Gap(16),
        SimilarBookListView(),
      ],
    );
  }
}
