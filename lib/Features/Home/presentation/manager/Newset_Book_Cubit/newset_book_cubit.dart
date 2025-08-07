import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewsetBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsetBook() async {
    emit(NewsetBookLoading());
    var result = await homeRepo.fetchFearuredBooks();
    result.fold((failure) {
      emit(NewsetBookFailure(failure.errorMasg));
    }, (books) {
      emit(NewsetBookSuccess(books));
    });
  }
}
