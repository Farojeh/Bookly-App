import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellerImage extends StatelessWidget {
  final double height;
  final double? tl;
  final double? bl;
  final double? tr;
  final double? br;
  final double ratio ;
  final String imgurl ;
  const BestSellerImage(
      {super.key, required this.height, this.tl, this.bl, this.tr, this.br, required this.ratio, required this.imgurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(tl ?? 0),
            bottomLeft: Radius.circular(bl ?? 0),
            bottomRight: Radius.circular(br ?? 0),
            topRight: Radius.circular(tr ?? 0)),
      ),
      child: AspectRatio(
          aspectRatio: ratio / 4,
          child: ClipRRect(
            borderRadius:BorderRadius.only(
            topLeft: Radius.circular(tl ?? 0),
            bottomLeft: Radius.circular(bl ?? 0),
            bottomRight: Radius.circular(br ?? 0),
            topRight: Radius.circular(tr ?? 0)) ,
            child: CachedNetworkImage(
            placeholder: (context, url) =>const Center(child:  CircularProgressIndicator()),
             imageUrl:  imgurl,
              fit: BoxFit.fill,
              errorWidget:(context, url, error) => Container(),
            ),
          )),
    );
  }
}
