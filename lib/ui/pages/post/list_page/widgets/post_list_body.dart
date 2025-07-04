import 'package:flutter/material.dart';
import 'package:practice/ui/pages/post/list_page/widgets/post_list_item.dart';

class PostListBody extends StatelessWidget {
  const PostListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (_) => PostDetailPage()));
          },
          child: PostListItem(),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}