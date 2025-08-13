import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repo/home_repo.dart';

part 'samilar_book_state.dart';

class SamilarBookCubit extends Cubit<SamilarBookState> {
  SamilarBookCubit(this.homeRepo) : super(SamilarBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSamilarBooks({required String category}) async {
    emit(SamilarBookLoading());
    var result = await homeRepo.fetchSamilaredBooks(category: category);
    result.fold((failure) {
      emit(SamilarBookFailure(failure.errorMasg));
    }, (books) {
      emit(SamilarBookSuccess(books));
    });
  }
}
