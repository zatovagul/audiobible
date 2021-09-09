
import 'package:bloc_skeleton/common/di/bloc/base_bloc.dart';
import 'package:bloc_skeleton/common/di/bloc/base_state.dart';
import 'package:bloc_skeleton/common/di/bloc/common_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_bloc.freezed.dart';

@freezed
abstract class HomeEvent with _$HomeEvent{
  const HomeEvent._();
  const factory HomeEvent.changePage(int page) = _ChangePage;
}

@freezed
abstract class HomeState with _$HomeState implements BaseState{
  const HomeState._();
  const factory HomeState.pageChanged(int page) = PageChanged;
}

class HomeScreenBloc extends Bloc<HomeEvent, BaseState> with BaseBloc{
  int page = 0;

  HomeScreenBloc() : super(CommonState.init());

  @override
  Stream<BaseState> mapEventToState(HomeEvent event) {
    return event.when(changePage: _changePage);
  }

  Stream<BaseState> _changePage(int page)async*{
    this.page = page;
    yield HomeState.pageChanged(page);
  }

}