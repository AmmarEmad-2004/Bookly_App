import 'package:bookly_app/features/home/presentation/views/widgets/book_list_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        BookListItem(),
      ],
    );
  }
}


