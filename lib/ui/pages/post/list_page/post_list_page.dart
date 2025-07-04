import 'package:flutter/material.dart';
import 'package:practice/ui/pages/post/list_page/widgets/post_list_body.dart';
import 'package:practice/ui/widgets/custom_navigation.dart';

class PostListPage extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final refreshKey = GlobalKey<RefreshIndicatorState>();


  PostListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: CustomNavigation(scaffoldKey),
      appBar: AppBar(
        title: const Text("App"),
      ),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {},
        child: PostListBody(),
      ),
    );
  }
}