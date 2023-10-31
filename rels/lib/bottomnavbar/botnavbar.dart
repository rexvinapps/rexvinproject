import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:rels/controller/navbarcontroller.dart';
import 'package:rels/datascreen/leadslist.dart';
import 'package:rels/homescreen/homescreen.dart';

class BotNavBar extends StatelessWidget {
  BotNavBar({super.key});

  final controller = Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (context) {
      // Get.put(SavedController);

      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex.value,
          children: [
            // SavedScreen(),
            HomeScreen(),
            CustomerLeads(),
          ],
        ),
        bottomNavigationBar:
            // BottomNavigationBar(
            //     currentIndex: controller.tabIndex,
            //     onTap: controller.changeTabIndex,
            //     items: [
            //       BottomNavigationBarItem(
            //           icon: Icon(IconlyBold.home), label: 'Home'),
            //       BottomNavigationBarItem(
            //           icon: Icon(Icons.info_outlined), label: 'About')
            //     ]),
            CurvedNavigationBar(
                backgroundColor: Color(0xFFFAF8F1),
                color: Color(0xFFC58940),
                index: controller.tabIndex.value,
                onTap: controller.changeTabIndex,
                items: [
              // Icon(IconlyBold.bookmark),
              Icon(Icons.home),
              Icon(Icons.people)
            ]),
      );
    });
  }
}
