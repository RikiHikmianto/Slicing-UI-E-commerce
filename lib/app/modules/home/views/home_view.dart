import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx_ecommerce/app/modules/home/views/widget/card_sale.dart';
import 'package:getx_ecommerce/app/modules/home/views/widget/header.dart';
import 'package:getx_ecommerce/style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const Header(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: margin16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sale",
                          style: boldStyle,
                        ),
                        Text(
                          "Super summer sale",
                          style: regularStyle,
                        ),
                      ],
                    ),
                    Text(
                      "View all",
                      style: regularStyle.copyWith(
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: margin16,
                    ),
                    CardSale(
                      textDiscount: '-20%',
                      textReview: '(9)',
                      textTitle: 'Dorothy Perkins',
                      textMiddle: 'Evening Dress',
                      textMoneyLine: '15\$',
                      textMoney: '12\$',
                      image: const Image(
                        image: AssetImage('assets/images/image1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CardSale(
                      textDiscount: '-15%',
                      textReview: '(8)',
                      textTitle: 'Sitlly',
                      textMiddle: 'Sport Dress',
                      textMoneyLine: '22\$',
                      textMoney: '19\$',
                      image: const Image(
                        image: AssetImage('assets/images/image2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CardSale(
                      textDiscount: '-20%',
                      textReview: '(10)',
                      textTitle: 'Dorothy Perkins',
                      textMiddle: 'Sport Dress',
                      textMoneyLine: '14\$',
                      textMoney: '12\$',
                      image: const Image(
                        image: AssetImage('assets/images/image3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: margin16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New",
                          style: boldStyle,
                        ),
                        Text(
                          "You’ve never seen it before!",
                          style: regularStyle,
                        ),
                      ],
                    ),
                    Text(
                      "View all",
                      style: regularStyle.copyWith(
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: margin16,
                    ),
                    CardSale(
                      textDiscount: 'NEW',
                      textReview: '(0)',
                      textTitle: 'OVS',
                      textMiddle: 'Blouse',
                      textMoneyLine: '',
                      textMoney: '30\$',
                      image: const Image(
                        image: AssetImage('assets/images/image4.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CardSale(
                      textDiscount: 'NEW',
                      textReview: '(0)',
                      textTitle: 'Mango Boy',
                      textMiddle: 'T-Shirt Sailing',
                      textMoneyLine: '',
                      textMoney: '10\$',
                      image: const Image(
                        image: AssetImage('assets/images/image5.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CardSale(
                      textDiscount: 'NEW',
                      textReview: '(0)',
                      textTitle: 'Cool',
                      textMiddle: 'Jeans',
                      textMoneyLine: '',
                      textMoney: '45\$',
                      image: const Image(
                        image: AssetImage('assets/images/image5.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: colorActive,
          unselectedItemColor: colorUnActive,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/home.svg',
                  width: 32,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/love.svg',
                  width: 32,
                ),
                label: 'Favorites'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/cart.svg',
                  width: 32,
                ),
                label: 'Bag'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/images/profile.svg',
                  width: 32,
                ),
                label: 'Profile'),
          ],
        ));
  }
}
