import 'package:flutter/material.dart';
import 'package:metanong/models/usermodel.dart';
import 'package:metanong/widgets/inbox_card.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final donaldTrump = UserModel(
      name: 'Kap Niño',
      bio: 'hoy asan ka na babe miss na kita hehe',
      profileImage:
          'data:image/jpeg;base64,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',
      bannerImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb4eWdIockxFe4lcwv4f-IQ5PeiDHE3lKR7A&usqp=CAU',
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InboxCard(userinbox: donaldTrump),
        //InboxCard(user:),
      ],
    );
  }
}