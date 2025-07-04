import 'package:flutter/material.dart';

class PostListPage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final refreshKey = GlobalKey<RefreshIndicatorState>();


  PostListPage(this.scaffoldKey, this.refreshKey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      drawer: CustomNavigation(scaffoldKey),
      appBar: AppBar(
        title: const Text("App"),
      ),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {},
        child: PostLIstBody(),
      ),
    )
  }
}