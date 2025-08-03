import 'package:bookly_app/Features/Search/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/result_book_search_list_view_item.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchBodyView extends StatelessWidget {
  const SearchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          CustomTextField(),
          Gap(20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Result Search",
              style: Style.textFont20,
            ),
          ),
          Gap(20),
          Expanded(
            child: ResultBookSearchListViewItem(),
          ),
        ],
      ),
    );
  }
}
