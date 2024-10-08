import 'package:bookly_mvvm/core/errors/failures.dart';
import 'package:bookly_mvvm/core/utils/api_service.dart';
import 'package:bookly_mvvm/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
       endPoint: 
              "volumes?Filtering=free-ebooks&q=subject:software engineer&Sorting=newest");
      List<BookModel> books = [];

      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFaliure.fromDioException(error));
      }
      return left(ServerFaliure(errorMessage: error.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeauterdBooks()async {
    try {
      var data = await apiService.get(
         endPoint: 
              "volumes?Filtering=free-ebooks&q=subject:Programming");     
      List<BookModel> books = [];
      
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFaliure.fromDioException(error));
      }
      return left(ServerFaliure(errorMessage: error.toString()));
    }
  }
  
  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks({required String category}) async{
    try {
      var data = await apiService.get(
         endPoint: 
              'volumes?Filtering=free-ebooks&q=$category&Sorting=relevance');     
      List<BookModel> books = [];
      
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFaliure.fromDioException(error));
      }
      return left(ServerFaliure(errorMessage: error.toString()));
    }
  }
}
