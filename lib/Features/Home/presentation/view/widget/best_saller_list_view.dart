import 'package:bookly_app/Features/Home/presentation/manager/Newset_Book_Cubit/newset_book_cubit.dart';
import 'package:bookly_app/core/widget/custom_circle_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/custom_error_text.dart';
import 'books_list_view_item.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
      builder: (context, state) {
        if (state is NewsetBookSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: BooksListViewItem(
                bookModel: state.books[index],
              ),
            ),
          );
        } else if (state is NewsetBookFailure) {
          return CustomErrorText(errMsg: state.errMsg);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
