import 'package:bookly_app/Features/Search/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchBodyView extends StatelessWidget {
  const SearchBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          CustomTextField(),
        ],
      ),
    );
  }
}
