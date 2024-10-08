import 'package:bookly_mvvm/core/utils/style.dart';
import 'package:bookly_mvvm/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class RatingBook extends StatelessWidget {
  final BookModel book ;
  const RatingBook({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rounded,
          color: Colors.amberAccent,
          size: 25,
        ),
        Row(
          children: [
            Text(
              "${book.volumeInfo.averageRating??0}",
              style: Styles.textStylegupter20,
            ),
            Opacity(
              opacity: 0.7,
              child: Text(
                " (${book.volumeInfo.ratingsCount??0})",
                style: Styles.textStylegupter20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
