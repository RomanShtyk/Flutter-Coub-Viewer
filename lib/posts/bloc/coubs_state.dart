part of 'coubs_bloc.dart';

enum CoubsStatus { initial, success, failure }

class CoubsState extends Equatable {
  const CoubsState({
    this.status = CoubsStatus.initial,
    this.coubs = const <Coubs>[],
    this.hasReachedMax = false,
  });

  final CoubsStatus status;
  final List<Coubs> coubs;
  final bool hasReachedMax;

  CoubsState copyWith({
    CoubsStatus status,
    List<Coubs> posts,
    bool hasReachedMax,
  }) {
    return CoubsState(
      status: status ?? this.status,
      coubs: posts ?? coubs,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [status, coubs, hasReachedMax];
}
