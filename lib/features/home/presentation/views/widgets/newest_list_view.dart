import 'package:bookly_app/features/home/presentation/views/widgets/newest_item.dart';
import 'package:flutter/material.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return NewestItem();
        });
  }
}
