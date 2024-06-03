part of 'upcoming_cubit.dart';

class UpcomingState extends Equatable {
  final int pageIndex;
  const UpcomingState({required this.pageIndex});

  @override
  // TODO: implement props
  List<Object?> get props => [pageIndex];
}

final class UpcomingInitial extends UpcomingState {
  const UpcomingInitial({super.pageIndex = 0});
}
