import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fecthBestSallerBooks() {
    // TODO: implement fecthBestSallerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFearuredBooks() {
    // TODO: implement fetchFearuredBooks
    throw UnimplementedError();
  }
}
