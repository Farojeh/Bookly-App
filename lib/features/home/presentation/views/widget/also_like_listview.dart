import 'package:bookly_mvvm/core/utils/app_router.dart';
import 'package:bookly_mvvm/core/utils/custom_error.dart';
import 'package:bookly_mvvm/features/home/presentation/view_models/Similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/best_seller_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AlsoLikeListview extends StatelessWidget {
  const AlsoLikeListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      height: 150,
      child: BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
        builder: (context, state) {
          if (state is SimilerBooksSuccess) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (ctx, index) => Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: () {
                          GoRouter.of(context).pushReplacement(AppRouter.kBookDetailsView , extra: state.books[index]);
                        },
                        child: BestSellerImage(
                          imgurl: state.books[index].volumeInfo.imageLinks == null
                              ? "https://th.bing.com/th/id/R.26e696d06e83a9d33c97450fa7f96a7d?rik=%2bibt217afogtjw&pid=ImgRaw&r=0"
                              : state.books[index].volumeInfo.imageLinks!
                                      .thumbnail ??
                                  "https://th.bing.com/th/id/R.26e696d06e83a9d33c97450fa7f96a7d?rik=%2bibt217afogtjw&pid=ImgRaw&r=0",
                          ratio: 3,
                          height: 100,
                          tl: 15,
                          tr: 15,
                          bl: 15,
                          br: 15,
                        ),
                      ),
                    ));
          } else if (state is SimilerBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
