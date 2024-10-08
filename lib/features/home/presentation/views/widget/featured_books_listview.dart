import 'package:bookly_mvvm/core/utils/app_router.dart';
import 'package:bookly_mvvm/core/utils/custom_error.dart';
import 'package:bookly_mvvm/features/home/presentation/view_models/feautred_books_cubit/featured_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/custom_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListview extends StatelessWidget {
  const FeaturedBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if(state is FeaturedBooksSuccess){
          return Padding(
        padding: const EdgeInsets.only(top: 25, left: 10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) =>  InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kBookDetailsView , extra: state.books[index]);
                },
                child: CustomListviewItem(
                  imgurl:state.books[index].volumeInfo.imageLinks!.thumbnail!,
                ),
              )),
        ),
      );
        }else if(state is FeaturedBooksFailure){
           return CustomErrorWidget(errMessage: state.errorMessage);
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
    
  }
}
