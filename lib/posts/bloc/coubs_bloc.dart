import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_infinite_list/models/coubs.dart';
import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'coubs_event.dart';
part 'coubs_state.dart';

class CoubsBloc extends Bloc<CoubsEvent, CoubsState> {
  CoubsBloc({@required this.httpClient}) : super(const CoubsState());

  final http.Client httpClient;

  @override
  Stream<Transition<CoubsEvent, CoubsState>> transformEvents(
    Stream<CoubsEvent> events,
    TransitionFunction<CoubsEvent, CoubsState> transitionFn,
  ) {
    return super.transformEvents(
      events.debounceTime(const Duration(milliseconds: 500)),
      transitionFn,
    );
  }

  @override
  Stream<CoubsState> mapEventToState(CoubsEvent event) async* {
    if (event is CoubsFetched) {
      yield await _mapPostFetchedToState(state);
    }
  }

  Future<CoubsState> _mapPostFetchedToState(CoubsState state) async {
    if (state.hasReachedMax) return state;
    try {
      if (state.status == CoubsStatus.initial) {
        final posts = await _fetchPosts(0, 20);
        return state.copyWith(
          status: CoubsStatus.success,
          posts: posts,
          hasReachedMax: false,
        );
      }
      final posts = await _fetchPosts(state.coubs.length, 20);
      return posts.isEmpty
          ? state.copyWith(hasReachedMax: true)
          : state.copyWith(
              status: PostStatus.success,
              posts: List.of(state.coubs)..addAll(posts),
              hasReachedMax: false,
            );
    } on Exception {
      return state.copyWith(status: PostStatus.failure);
    }
  }

  Future<List<Post>> _fetchPosts(int startIndex, int limit) async {
    final response = await httpClient.get(
      'https://jsonplaceholder.typicode.com/posts?_start=$startIndex&_limit=$limit',
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      return data.map((dynamic rawPost) {
        return Post(
          id: rawPost['id'] as int,
          title: rawPost['title'] as String,
          body: rawPost['body'] as String,
        );
      }).toList();
    }
    throw Exception('error fetching posts');
  }
}
