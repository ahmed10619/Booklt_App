import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                "Harry Potter and Goblet Of Fire",
                style: Style.textFont22.copyWith(
                  fontFamily: kGtSectraFine,
                ),
              ),
            ),
            const Gap(4),
            const Text(
              "J.K Rowling",
              style: Style.textFont15,
            ),
            const Gap(4),
            Row(
              children: [
                Text(
                  "19.99 €",
                  style: Style.textFont22.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
