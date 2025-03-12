import 'package:bookly_app/core/widgets/error_message.dart';
import 'package:bookly_app/core/widgets/loading_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_books_cubit/fetch_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListItems extends StatelessWidget {
  const BookListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBooksCubit, FetchBooksState>(
        builder: (context, state) {
      if (state is FetchBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) => CustomBookItem(
              imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
            ),
          ),
        );
      } else if (state is FetchBooksFailuer) {
        return ErrorMessage(errMessage: state.errMassage);
      } else {
        return LoadingWidget();
      }
    });
  }
}
