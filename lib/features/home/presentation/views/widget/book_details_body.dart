import 'package:bookly_mvvm/core/utils/style.dart';
import 'package:bookly_mvvm/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/also_like_listview.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/best_seller_image.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/custom_appbar_detailsview.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/rating_book.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/two_button.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsBody extends StatelessWidget {
  final BookModel book ;
  const BookDetailsBody({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 18,),
                const CustomAppbarDetailsview(),
                const SizedBox(
                  height: 15,
                ),
                 BestSellerImage(
                  imgurl: book.volumeInfo.imageLinks!.thumbnail!,
                  ratio: 3,
                  height: 300,
                  tl: 15,
                  tr: 15,
                  bl: 15,
                  br: 15,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  book.volumeInfo.title!,
                  style: Styles.textStylegupter30,
                  textAlign: TextAlign.center,
                ),
                 Text(
                  book.volumeInfo.authors![0],
                  style: Styles.textStyle20italic,
                ),
                const SizedBox(
                  height: 10,
                ),
               RatingBook(book:book),
               TwoButton(book:book ,),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 15, top: 25),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "You can also like",
                    style: Styles.textStylewhite,
                    textAlign: TextAlign.left,
                  ),
                ),
                const AlsoLikeListview(),
                const SizedBox(height: 15,)
              ],
            );
  }
}