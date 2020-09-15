import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/coub_repo.dart';
import 'package:flutter_infinite_list/posts/view/coub_paginator.dart';
import 'package:flutter_paginator/flutter_paginator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Coub Viewer',
        home: HomePage(repository: CoubRepository()));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({@required this.repository}) : super();
  final CoubRepository repository;

  @override
  State<StatefulWidget> createState() {
    return HomeState(repository: repository);
  }
}

class HomeState extends State<HomePage> {
  HomeState({@required this.repository}) : super();
  final CoubRepository repository;
  GlobalKey<PaginatorState> paginatorGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Coubs')),
        body: CoubPaginator(repository: repository));
  }
}
