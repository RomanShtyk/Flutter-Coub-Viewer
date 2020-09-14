import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_paginator/enums.dart';
import 'package:flutter_paginator/flutter_paginator.dart';
import 'package:http/http.dart' as http;

import 'models/CoubResp.dart';

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Paginator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  GlobalKey<PaginatorState> paginatorGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Paginator'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.format_list_bulleted),
            onPressed: () {
              paginatorGlobalKey.currentState
                  .changeState(listType: ListType.LIST_VIEW);
            },
          ),
          IconButton(
            icon: const Icon(Icons.grid_on),
            onPressed: () {
              paginatorGlobalKey.currentState.changeState(
                listType: ListType.GRID_VIEW,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.library_books),
            onPressed: () {
              paginatorGlobalKey.currentState
                  .changeState(listType: ListType.PAGE_VIEW);
            },
          ),
        ],
      ),
      body: Paginator.listView(
        key: paginatorGlobalKey,
        pageLoadFuture: sendCountriesDataRequest,
        pageItemsGetter: listItemsGetter,
        listItemBuilder: listItemBuilder,
        loadingWidgetBuilder: loadingWidgetMaker,
        errorWidgetBuilder: errorWidgetMaker,
        emptyListWidgetBuilder: emptyListWidgetMaker,
        totalItemsGetter: totalPagesGetter,
        scrollPhysics: const ClampingScrollPhysics(),
        pageErrorChecker: (CoubResp pageData) {
          if(pageData == null) return false;
          return pageData.coubs == null;
        },
      ),
    );
  }

  Future<CoubResp> sendCountriesDataRequest(int page) async {
    try {
      var url =
          Uri.encodeFull('http://coub.com/api/v2/timeline/hot?page=$page');
      var response = await http.get(url);
      Map<String, dynamic> map = json.decode(response.body);
      return CoubResp.fromJsonMap(map);
    } catch (e) {
      if (e is IOException) {
        return null;
      } else {
        print(e.toString());
        return null;
      }
    }
  }

  List<dynamic> listItemsGetter(CoubResp coubResponse) {
    var list = <String>[];
    coubResponse?.coubs?.forEach((value) {
      list.add(value.title);
    });
    return list;
  }

  Widget listItemBuilder(dynamic value, int index) {
    return ListTile(
      leading: Text(index.toString()),
      title: Text(value),
    );
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
