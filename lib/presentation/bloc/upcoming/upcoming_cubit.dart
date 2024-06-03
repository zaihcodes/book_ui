import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'upcoming_state.dart';

class UpcomingCubit extends Cubit<UpcomingState> {
  UpcomingCubit() : super(const UpcomingInitial());

  void changePageIndex({required int index}) {
    emit(UpcomingState(pageIndex: index));
  }
}
