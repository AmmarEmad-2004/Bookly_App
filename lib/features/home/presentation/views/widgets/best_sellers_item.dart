import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/styles_app.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_sellers_book.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_sellers_item_rate.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellersItem extends StatelessWidget {
  const BestSellersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.bookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20, bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BestSellersBook(),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'Harry Potter\nand the Goblin of Fire',
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text('J.K. Rowling', style: Styles.textStyle14),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'19.99 $',
                        style: Styles.textStyle18,
                      ),
                      BestSellersItemRating()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
