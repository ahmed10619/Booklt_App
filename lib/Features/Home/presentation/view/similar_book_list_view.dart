import 'package:bookly_app/Features/Home/presentation/manager/samilar_book_cubit/samilar_book_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/custom_book_image_item.dart';
import 'package:bookly_app/core/widget/custom_circle_indicator.dart';
import 'package:bookly_app/core/widget/custom_error_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SamilarBookCubit, SamilarBookState>(
      builder: (context, state) {
        if (state is SamilarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: CustomBookImageItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail),
                );
              },
            ),
          );
        } else if (state is SamilarBookFailure) {
          return CustomErrorText(errMsg: state.errMsg);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
