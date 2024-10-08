import 'package:bookly_mvvm/core/utils/app_router.dart';
//import 'package:bookly_mvvm/features/home/presentation/views/widget/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchListview extends StatelessWidget {
  const SearchListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kBookDetailsView);
          },
          overlayColor: WidgetStatePropertyAll(Colors.white.withOpacity(0)),
          // child: const BestSellerItem(
          //   book:null ,
          //   margintop: 15,
          // )
          ),
    );
  }
}
