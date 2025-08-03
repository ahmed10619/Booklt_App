import 'package:bookly_app/Features/Home/presentation/view/widget/best_saller_list_view_item.dart';
import 'package:flutter/material.dart';

class ResultBookSearchListViewItem extends StatelessWidget {
  const ResultBookSearchListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: BestSallerListViewItem(),
      ),
    );
  }
}
