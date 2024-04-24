// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> newestBooks() async {
    emit(NewestBooksLoding());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(
        NewestBooksFailure(errMessage: failure.errMessage),
      );
    }, (books) {
      emit(
        NewestBooksSuccess(books),
      );
    });
  }
}
