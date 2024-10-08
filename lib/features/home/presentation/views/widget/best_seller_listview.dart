import 'package:bookly_mvvm/core/utils/app_router.dart';
import 'package:bookly_mvvm/core/utils/custom_error.dart';
import 'package:bookly_mvvm/features/home/presentation/view_models/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) => InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kBookDetailsView , extra: state.books[index] );
                },
                overlayColor:
                    WidgetStatePropertyAll(Colors.white.withOpacity(0)),
                child: BestSellerItem(
                  book: state.books[index],
                  margintop: 15,
                )),
          );
        } else if (state is BestSellerBooksFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return Container(
              margin: const EdgeInsets.only(top: 40),
              alignment: Alignment.center,
              child: const CircularProgressIndicator());
        }
      },
    );
  }
}
