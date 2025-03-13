import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetch_similar_books_state.dart';

class FetchSimilarBooksCubit extends Cubit<FetchSimilarBooksState> {
  FetchSimilarBooksCubit(this.homeRepo) : super(FetchSimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required category}) async {
    emit(FetchSimilarBooksLoading());
    var results = await homeRepo.fetchSimilarListItems(category: category);
    results.fold(
      (failuer) => emit(FetchSimilarBooksFailuer(errMessage: failuer.message)),
      (books) => emit(
        FetchSimilarBooksSuccess(
          books: books,
        ),
      ),
    );
  }
}
