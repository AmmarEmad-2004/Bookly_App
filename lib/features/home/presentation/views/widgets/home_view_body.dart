import 'package:bookly_app/core/utils/styles_app.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/newest_list_view.dart';
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
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                BookListItems(),
                const SizedBox(height: 50),
                Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          SliverFillRemaining(
            child: NewestListView(),
          )
        ],
      ),
    );
  }
}
