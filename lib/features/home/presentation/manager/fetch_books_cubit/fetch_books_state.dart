part of 'fetch_books_cubit.dart';

sealed class FetchBooksState extends Equatable {
  const FetchBooksState();

  @override
  List<Object> get props => [];
}

final class FetchBooksInitial extends FetchBooksState {}

final class FetchBooksLoading extends FetchBooksState {}

final class FetchBooksSuccess extends FetchBooksState {
  final List<BookModel> books;

  const FetchBooksSuccess({required this.books});
}

final class FetchBooksFailuer extends FetchBooksState {
  final String errMassage;

  const FetchBooksFailuer({required this.errMassage});
}
