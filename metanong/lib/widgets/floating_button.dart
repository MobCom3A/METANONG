import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metanong/providers/posts.dart';
import 'package:metanong/utils/constants.dart';
import 'package:provider/provider.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostsProvider>(context);
    return FloatingActionButton(
      backgroundColor: kMainColor,
      onPressed: () {
        Get.toNamed('/')!.then((value) {
          if (value != null) {
            postProvider.addToPostList(value);
            debugPrint(value.tweetImage.path!);
          }
        });
      },
      child: Image.asset(
        'assets/postIcon.png',
        color: Colors.white,
      ),
    );
  }
}
