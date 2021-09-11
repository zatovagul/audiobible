import 'package:bloc_skeleton/common/di/bloc/base_bloc.dart';
import 'package:bloc_skeleton/common/di/bloc/base_state.dart';
import 'package:bloc_skeleton/common/di/bloc/common_state.dart';
import 'package:bloc_skeleton/data/service/database/app_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';


part 'books_screen_bloc.freezed.dart';

@freezed
abstract class BookEvent with _$BookEvent{
  const BookEvent._();
  const factory BookEvent.switchBook(bool old) = _SwitchBook;
}

@freezed
abstract class BookState with _$BookState implements BaseState{
  const BookState._();
  const factory BookState.bookSwitched(bool isOld) = BookSwitched;
}

class BooksScreenBloc extends Bloc<BookEvent, BaseState> with BaseBloc{
  bool isOld = true;
  late BookDao bookDao;
  late Stream<List<Book>> booksStream;

  BooksScreenBloc(BuildContext context) : super(CommonState.init()){
    bookDao = Provider.of<BookDao>(context, listen: false);
    booksStream = bookDao.watchAllBooks();
  }

  @override
  Stream<BaseState> mapEventToState(BookEvent event) {
    return event.when(switchBook: _switchBook);
  }

  Stream<BaseState> _switchBook(bool old)async*{
    isOld = old;
    yield BookState.bookSwitched(old);
    yield CommonState.init();
  }

}