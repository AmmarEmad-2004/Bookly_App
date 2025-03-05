import 'package:bookly_app/features/home/presentation/views/widgets/best_sellers_item.dart';
import 'package:flutter/material.dart';

class BestSellersListView extends StatelessWidget {
  const BestSellersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return BestSellersItem();
        });
  }
}
