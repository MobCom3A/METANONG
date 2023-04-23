import 'package:flutter/material.dart';
import 'package:metanong/utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchProfile extends StatelessWidget {
  const SearchProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: kaccentColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      'data:image/jpeg;base64,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'),
                )),
          ),
          Positioned(
            top: 50,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: ktxtwhiteColor,
                  child: const CircleAvatar(
                    radius: 38,
                    backgroundImage: NetworkImage(
                      'data:image/jpeg;base64,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',
                    ),
                  ),
                ),
                'Kap Niño'
                    .text
                    .minFontSize(16)
                    .fontWeight(FontWeight.w500)
                    .color(ktxtwhiteColor)
                    .make(),
                'Humorous'
                    .text
                    .minFontSize(10)
                    .fontWeight(FontWeight.w400)
                    .color(ktxtwhiteColor)
                    .make(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: ktxtwhiteColor)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3.0, horizontal: 5),
                    child: 'Follow'
                        .text
                        .fontWeight(FontWeight.w500)
                        .letterSpacing(1)
                        .color(ktxtwhiteColor)
                        .make(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}