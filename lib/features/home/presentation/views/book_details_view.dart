import 'package:bookly_mvvm/core/background.dart';
import 'package:bookly_mvvm/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/presentation/view_models/Similer_books_cubit/similer_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  final BookModel book ;
  const BookDetailsView({super.key, required this.book});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {

  @override
  void initState() {
    BlocProvider.of<SimilerBooksCubit>(context).fetchSimilarBooks(
      category: widget.book.volumeInfo.categories![0]
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
            screen: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: Padding(
            padding:const EdgeInsets.only(left: 10, right: 10, top: 0),
            child: SingleChildScrollView(
              child: BookDetailsBody(book:widget.book ,)
            ),
          ),
        )),
      );
  }
}
