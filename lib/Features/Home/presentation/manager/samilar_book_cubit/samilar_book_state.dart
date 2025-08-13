part of 'samilar_book_cubit.dart';

sealed class SamilarBookState extends Equatable {
  const SamilarBookState();

  @override
  List<Object> get props => [];
}

final class SamilarBookInitial extends SamilarBookState {}

final class SamilarBookSuccess extends SamilarBookState {
  final List<BookModel> books;

  const SamilarBookSuccess(this.books);
}

final class SamilarBookLoading extends SamilarBookState {}

final class SamilarBookFailure extends SamilarBookState {
  final String errMsg;

  const SamilarBookFailure(this.errMsg);
}
