import 'package:bookly_mvvm/core/utils/style.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/best_seller_listview.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/custom_appbar.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/featured_books_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListView(
       // physics: const BouncingScrollPhysics(),
        children: const [
          CustomAppbar(),
          FeaturedBooksListview(),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Best Seller",
              style: Styles.textStyle18,
              textAlign: TextAlign.left,
            ),
          ),
          BestSellerListview()
        ],
      ),
    );
  }
}
