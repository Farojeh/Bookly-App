import 'package:bookly_mvvm/core/errors/failures.dart';
import 'package:bookly_mvvm/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';


abstract class HomeRepo{
  Future<Either<Failures,List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failures,List<BookModel>>> fetchFeauterdBooks();
  Future<Either<Failures,List<BookModel>>> fetchSimilarBooks({required String category});
}