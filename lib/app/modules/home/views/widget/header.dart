import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../style.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.3,
      width: Get.width,
      child: Stack(
        children: [
          Container(
            color: Colors.blue,
            height: Get.height * 0.3,
            width: Get.width,
            child: const Image(
                image: AssetImage('assets/images/appBar.png'),
                fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 18),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text("Street clothes", style: boldHeader)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 75),
            child: Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    'assets/images/favorite.svg',
                    width: 24,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    'assets/images/more.svg',
                    width: 28,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
