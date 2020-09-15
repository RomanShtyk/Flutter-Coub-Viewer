part of 'coubs_bloc.dart';

abstract class CoubsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CoubsFetched extends CoubsEvent {}
