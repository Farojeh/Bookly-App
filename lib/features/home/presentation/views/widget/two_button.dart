import 'package:bookly_mvvm/core/utils/lunch_custom_url.dart';
import 'package:bookly_mvvm/core/utils/style.dart';
import 'package:bookly_mvvm/core/widget/custom_button.dart';
import 'package:bookly_mvvm/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';

class TwoButton extends StatelessWidget {
  final BookModel book;
  const TwoButton({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 55,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: [
          Expanded(
              child: LayoutBuilder(
                  builder: (ctx, size) => CustomButton(
                      color: const Color(0xffFEFEFE),
                      height: size.maxHeight,
                      width: size.maxWidth,
                      title: "Free",
                      style: Styles.textStyleblack,
                      redtl: 25,
                      redbl: 25))),
          Expanded(
              child: LayoutBuilder(
                  builder: (ctx, size) => CustomButton(
                      onPressed: () async {
                        launchCustomUrl(context , book.volumeInfo.previewLink!);
                      },
                      color: const Color.fromARGB(255, 227, 139, 123),
                      height: size.maxHeight,
                      width: size.maxWidth,
                      title: checkbook(book) ,
                      style: Styles.textStylewhite,
                      redtr: 25,
                      redbr: 25))),
        ],
      ),
    );
  }


 String checkbook(BookModel book){
  if(book.volumeInfo.previewLink == null){
    return "Not Availble";
  }else{
    return "Free Preview";
  }
 }

}
