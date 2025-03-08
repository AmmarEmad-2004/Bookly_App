import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementaion implements HomeRepo{
  @override
  Future<Either<Failures, BookModel>> fetchBestSellersBooks() {
    
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, BookModel>> fetchBookListItems() {
    // TODO: implement fetchBookListItems
    throw UnimplementedError();
  }
}