import 'package:bloc/bloc.dart';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

import 'package:equatable/equatable.dart';

part 'fetch_books_state.dart';

class FetchBooksCubit extends Cubit<FetchBooksState> {
  FetchBooksCubit(this.homeRepo) : super(FetchBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBooks() async {
    emit(FetchBooksLoading());
    var result = await homeRepo.fetchBookListItems();

    result.fold(
      (failure) => emit(FetchBooksFailuer(errMassage: failure.message)),
      (books) => emit(FetchBooksSuccess(books: books)),
    );
  }
}
