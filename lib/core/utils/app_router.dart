import 'package:bookly_app/Features/Home/presentation/view/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kHomeDetailsView = '/homeDetailsView';
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
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
