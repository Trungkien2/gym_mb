import 'package:flutter/material.dart';
import 'package:riverpod_tour/common/color_extension.dart';

class OnBoardingPageView extends StatelessWidget {
  final Map pobj;
  const OnBoardingPageView({super.key, required this.pobj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SizedBox(
      width: media.width,
      height: media.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            pobj["image"].toString(),
            width: media.width,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: media.width * 0.1,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                pobj['title'].toString(),
                style: TextStyle(
                    color: Tcolor.blackColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w800),
              )),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                pobj['subtitle'].toString(),
                style: TextStyle(
                    color: Tcolor.grayColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              )),
        ],
      ),
    );
  }
}
