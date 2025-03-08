part of 'fetch_newest_books_cubit.dart';

sealed class FetchNewestBooksState extends Equatable {
  const FetchNewestBooksState();

  @override
  List<Object> get props => [];
}

final class FetchNewestBooksInitial extends FetchNewestBooksState {}

final class FetchNewestBooksLoading extends FetchNewestBooksState {}

final class FetchNewestBooksSuccess extends FetchNewestBooksState {
  final List<BookModel> books;

  const FetchNewestBooksSuccess({required this.books});
}

final class FetchNewestBooksFailuer extends FetchNewestBooksState {
  final String errMassage;

  const FetchNewestBooksFailuer({required this.errMassage});
}
