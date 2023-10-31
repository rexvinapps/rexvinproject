import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rels/bottomnavbar/botnavbar.dart';
import 'package:rels/datascreen/addsuspect.dart';
import 'package:rels/datascreen/leadslist.dart';
import 'package:rels/homescreen/homescreen.dart';
import 'package:rels/homescreen/splashscreen.dart';

class RouteName {
  static const navbar = '/';
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const aboutme = '/about';
  static const list = '/list';
  static const leads = '/leads';
  static const splash = '/splash';
  static const addsuspect = '/addsuspect';
}

class pageRouteApp {
  static final pages = [
    GetPage(name: RouteName.navbar, page: () => BotNavBar()),
    // GetPage(name: RouteName.login, page: () => LoginScreen()),
    // GetPage(name: RouteName.register, page: () => RegisterScreen()),
    GetPage(name: RouteName.home, page: () => HomeScreen()),
    // GetPage(name: RouteName.aboutme, page: () => AboutMe()),
    // GetPage(name: RouteName.saved, page: () => SavedScreen()),
    GetPage(
        name: RouteName.leads,
        page: () {
          // var uri = Get.parameters['uri'];
          // var searchQuery = Get.parameters['searchQuery'];
          return CustomerLeads();
        }),
    GetPage(
      name: RouteName.addsuspect,
      page: () => AddSuspect(),
      transition: Transition.upToDown,
      customTransition: SizeTransitionAnimation(),
    ),

    GetPage(name: RouteName.splash, page: () => SplashScreen()),
  ];
}

class SizeTransitionAnimation extends CustomTransition {
  @override
  Widget buildTransition(
      BuildContext context,
      Curve? curve,
      Alignment? alignment,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizeTransition(
        sizeFactor: animation,
        child: child,
        axis: Axis.vertical,
      ),
    );
  }
}
