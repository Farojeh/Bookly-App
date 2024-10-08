import 'package:bookly_mvvm/core/utils/style.dart';
import 'package:bookly_mvvm/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BestSellerDetials extends StatelessWidget {
  final BookModel book ;
  const BestSellerDetials({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: LayoutBuilder(
      builder: (ctx, size) => Padding(
        padding: const EdgeInsets.only(left: 10, right: 5, top: 4, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: size.maxWidth,
              child: Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                book.volumeInfo.title!,
                style: Styles.textStylegupter20,
              ),
            ),
            Text(book.volumeInfo.authors![0]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Free",
                  style: Styles.textStylegupter20,
                ),
               const Spacer(flex: 3,),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: Colors.amberAccent,
                      size: 20,
                    ),
                    Text(
                      "${book.volumeInfo.averageRating??0} (${book.volumeInfo.ratingsCount??0})",
                      style: Styles.textStylegupter20,
                    ),
                  ],
                ),
               const Spacer()
              ],
            )
          ],
        ),
      ),
    ));
  }
}
