import 'package:bookly_app/Features/Home/presentation/view/widget/custom_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/featured_list_books.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturesListBooks(),
          Gap(50),
          Text(
            "Best Saller",
            style: Style.textFont20,
          ),
          Gap(20),
          BestSallerListViewItem(),
        ],
      ),
    );
  }
}

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        const Gap(30),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: const Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                "Harry Potter and Goblet Of Fire",
                style: Style.textFont22,
              ),
            ),
          ],
        )
      ],
    );
  }
}
