import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../style.dart';

class CardSale extends StatelessWidget {
  final String textDiscount;
  final String textReview;
  final String textTitle;
  final String textMiddle;
  final String textMoneyLine;
  final String textMoney;
  final Image image;

  const CardSale({
    Key? key,
    required this.textDiscount,
    required this.textReview,
    required this.textTitle,
    required this.textMiddle,
    required this.textMoneyLine,
    required this.textMoney,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: Get.height * 0.38,
        width: Get.width * 0.45,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                      child: image,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: const EdgeInsets.only(top: 8, left: 8),
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: bgColor),
                        child: Center(
                            child: Text(
                          textDiscount,
                          style: regularWhite,
                        )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/star.svg',
                            width: 18,
                          ),
                          SvgPicture.asset(
                            'assets/images/star.svg',
                            width: 18,
                          ),
                          SvgPicture.asset(
                            'assets/images/star.svg',
                            width: 18,
                          ),
                          SvgPicture.asset(
                            'assets/images/star.svg',
                            width: 18,
                          ),
                          SvgPicture.asset(
                            'assets/images/star.svg',
                            width: 18,
                          ),
                          Text(
                            textReview,
                            style: regularStyle,
                          )
                        ],
                      ),
                      Text(
                        textTitle,
                        style: regularStyle,
                      ),
                      Text(
                        textMiddle,
                        style: lightStyle.copyWith(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            textMoneyLine,
                            style: textGray.copyWith(
                                fontSize: 18,
                                decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            textMoney,
                            style: textGreen.copyWith(fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: buttonColor,
                    minimumSize: const Size(0, 0),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: textColorGray,
                    size: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
