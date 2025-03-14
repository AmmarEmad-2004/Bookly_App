import 'package:bookly_app/core/widgets/error_message.dart';
import 'package:bookly_app/core/widgets/loading_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_similar_books_cubit/fetch_similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarBooksCubit, FetchSimilarBooksState>(
      builder: (context, state) {
        if (state is FetchSimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => CustomBookItem(
                imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
              ),
            ),
          );
        } else if (state is FetchSimilarBooksFailuer) {
          return ErrorMessage(errMessage: state.errMessage);
        } else {
          return LoadingWidget();
        }
      },
    );
  }
}
