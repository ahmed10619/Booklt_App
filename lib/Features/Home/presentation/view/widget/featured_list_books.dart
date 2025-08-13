import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/manager/Featured_Books_Cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/view/widget/custom_book_image_item.dart';
import 'package:bookly_app/core/widget/custom_circle_indicator.dart';
import 'package:bookly_app/core/widget/custom_error_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';

class FeaturesListBooks extends StatelessWidget {
  const FeaturesListBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () => GoRouter.of(context).push(
                        AppRouter.kHomeDetailsView,
                        extra: state.books[index]),
                    child: CustomBookImageItem(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorText(errMsg: state.errMsg);
        } else {
          return const CustomCircleIndicator();
        }
      },
    );
  }
}
