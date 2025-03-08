import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BestSellersBook extends StatelessWidget {
  const BestSellersBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(AssetsData.testImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
