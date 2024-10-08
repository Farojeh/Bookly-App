import 'package:bookly_mvvm/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/best_seller_detials.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widget/best_seller_image.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  final double margintop;
  final BookModel book ;

  const BestSellerItem({super.key, required this.margintop, required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:130 ,
        width: double.infinity,
        margin: EdgeInsets.only(right: 15, top: margintop, left: 5),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.15),
          borderRadius: BorderRadius.circular(15),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BestSellerImage(
              imgurl: book.volumeInfo.imageLinks!.thumbnail!,
              ratio: 3 ,
              height: 130,
              bl: 15,
              tl: 15,
            ),
            BestSellerDetials(
              book: book,
            )
          ],
        ));
  }
}
