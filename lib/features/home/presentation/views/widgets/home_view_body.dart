import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles_app.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_list_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BookListItem(),
          const SizedBox(height: 45),
          Text(
            'Best Sellers',
            style: Styles.textStyle20,
          ),
        ],
      ),
    );
  }
}
