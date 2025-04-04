import 'package:bookly_app/core/utils/styles_app.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsViewAppBar(),
          BookDetailsItem(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            bookModel.volumeInfo.title!,
            style: Styles.textStyle30,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 18,
          ),
          BooksAction(bookModel: bookModel,),
        ],
      ),
    );
  }
}
