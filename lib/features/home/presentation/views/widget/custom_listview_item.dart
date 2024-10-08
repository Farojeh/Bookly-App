import 'package:bookly_mvvm/features/home/presentation/views/widget/best_seller_image.dart';
import 'package:flutter/material.dart';

class CustomListviewItem extends StatelessWidget {
  final String imgurl ;
  const CustomListviewItem({super.key, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: BestSellerImage(
        imgurl: imgurl,
        ratio: 2.7,
        height: MediaQuery.of(context).size.height * 0.3,
        tl: 20,tr: 20,bl: 20,br: 20,
      ),
    );
  }
}
