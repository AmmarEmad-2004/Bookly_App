import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetch_newest_books_state.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(this.homeRepo) : super(FetchNewestBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(FetchNewestBooksLoading());

    var resuit = await homeRepo.fetchNewestBooks();

    resuit.fold(
      (failure) => emit(FetchNewestBooksFailuer(errMassage: failure.message)),
      (books) => emit(FetchNewestBooksSuccess(books: books)),
    );
  }
}
