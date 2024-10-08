import 'package:bookly_mvvm/core/utils/app_router.dart';
import 'package:bookly_mvvm/core/utils/service_locator.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_mvvm/features/home/presentation/view_models/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/view_models/feautred_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeauterdBooks()),
        BlocProvider(create: (context) =>BestSellerBooksCubit(getIt.get<HomeRepoImpl>())..fetchBestSellerBooks())
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
