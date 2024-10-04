



import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../state_holder/bottom_nav_bar.dart';
import '../../utility/app_color.dart';
import '../../utility/image_path.dart';
import '../expoler_search/expoler_search.dart';
import '../home/home_page.dart';


class BottomNavBar extends StatefulWidget {
 const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final BottomNavBarController bottomNavBarController = Get.find<BottomNavBarController>();
  int selectIndex = 0;

  // List of screen widgets
  List<Widget> screen = [
    const HomePage(),
    const ExpolerSearchPage(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.red,
    ),
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavBarController>(builder: (_) {

        if (bottomNavBarController.selectIndex >= 0 && bottomNavBarController.selectIndex < screen.length) {
          return screen[bottomNavBarController.selectIndex];
        } else {
          return screen[0];
        }
      }),
      bottomNavigationBar: GetBuilder<BottomNavBarController>(
        builder: (_) {
          return BottomNavigationBar(
            backgroundColor: const Color(0xffFFFFFF),
            elevation: 3,
            type: BottomNavigationBarType.fixed,
            currentIndex: bottomNavBarController.selectIndex,
            onTap: (index) {

              if (index >= 0 && index < screen.length) {
                bottomNavBarController.changeIndex(index);
              }
            },
            selectedItemColor: TColor.splashColor,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(icon: Image.asset(ImagePath.home) ,label: 'Shop'),
               BottomNavigationBarItem(icon: Image.asset(ImagePath.search), label: 'Explore'),
               BottomNavigationBarItem(icon: Image.asset(ImagePath.cart) , label: 'Cart'),
               BottomNavigationBarItem(icon: Image.asset(ImagePath.favourt) , label: 'Favourite'),
               BottomNavigationBarItem(icon: Image.asset(ImagePath.account) , label: 'Account'),
            ],
          );
        },
      ),
    );
  }
}