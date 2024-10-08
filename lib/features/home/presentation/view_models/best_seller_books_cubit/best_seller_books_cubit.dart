import 'package:bookly_mvvm/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());
  
  final HomeRepo homeRepo ;

  Future<void> fetchBestSellerBooks()async{
    emit(BestSellerBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks(); 
    result.fold(
      (failure){
        emit(BestSellerBooksFailure(errorMessage: failure.errorMessage));
      }, (books){
        emit(BestSellerBooksSuccess(books: books));
      });

  }


}


