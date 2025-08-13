import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/Features/Home/presentation/manager/samilar_book_cubit/samilar_book_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/view/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/Search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utils/service_locaror.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kHomeDetailsView = '/homeDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kHomeDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SamilarBookCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
