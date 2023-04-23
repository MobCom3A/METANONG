import 'dart:io';

import 'package:metanong/models/usermodel.dart';

class PostModel {
  UserModel user = UserModel(
      name: 'Albert Einstein',
      bio: 'Ginanon-ganon lang',
      profileImage:
          'https://parade.com/.image/t_share/MTkwNTgwOTUyNjU2Mzg5MjQ1/albert-einstein-quotes-jpg.jpg',
      bannerImage:
          'https://c4.wallpaperflare.com/wallpaper/256/820/44/dreams-failure-motivational-inspirational-wallpaper-preview.jpg');
  String tweetText = '';
  File? tweetImage;
  List<String> likes = [];
  List<String> comments = [];
  List<String> retweets = [];
  String? uploadTime;
}
