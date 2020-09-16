import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/coub_repo.dart';
import 'package:flutter_infinite_list/models/CoubResp.dart';
import 'package:flutter_infinite_list/models/coubs.dart';
import 'package:flutter_infinite_list/posts/view/coub_list_item.dart';
import 'package:flutter_paginator/flutter_paginator.dart';

class CoubPaginator extends StatefulWidget {
  const CoubPaginator({@required this.repository}) : super();

  final CoubRepository repository;

  @override
  State<StatefulWidget> createState() {
    return CoubPaginatorState(repository: repository);
  }
}

class CoubPaginatorState extends State<CoubPaginator> {
  CoubPaginatorState({@required this.repository}) : super();

  final CoubRepository repository;

  final GlobalKey<PaginatorState> paginatorGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Paginator.listView(
        key: paginatorGlobalKey,
        pageLoadFuture: coubPageLoad,
        pageItemsGetter: listItemsGetter,
        listItemBuilder: listItemBuilder,
        loadingWidgetBuilder: loadingWidgetMaker,
        errorWidgetBuilder: errorWidgetMaker,
        emptyListWidgetBuilder: emptyListWidgetMaker,
        totalItemsGetter: totalPagesGetter,
        scrollPhysics: const ClampingScrollPhysics(),
        pageErrorChecker: (CoubResp pageData) {
          if (pageData == null) return false;
          return pageData.coubs == null;
        });
  }

  Future<CoubResp> coubPageLoad(int page) async {
    return await repository.fetchHotCoubs(page);
  }

  List<dynamic> listItemsGetter(CoubResp coubResponse) {
    return coubResponse?.coubs;
  }

  Widget listItemBuilder(dynamic value, int index) {
    var coub = value as Coubs;
    return Container(child: CoubListItem(coub: coub));
  }

  Widget loadingWidgetMaker() {
    return Container(
      alignment: Alignment.center,
      height: 160.0,
      child: const CircularProgressIndicator(),
    );
  }

  Widget errorWidgetMaker(CoubResp coubResponse, dynamic retryListener) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('some error'),
        ),
        FlatButton(
          onPressed: retryListener,
          child: const Text('Retry'),
        )
      ],
    );
  }

  Widget emptyListWidgetMaker(CoubResp countriesData) {
    return const Center(
      child: Text('No countries in the list'),
    );
  }

  int totalPagesGetter(CoubResp countriesData) {
    return countriesData.total_pages;
  }
}
