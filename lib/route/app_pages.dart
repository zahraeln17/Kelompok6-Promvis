// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutter_aplikasiupi/page/halaman_dashboard.dart';
import 'package:flutter_aplikasiupi/route/app_pages.dart';
import 'package:flutter_aplikasiupi/route/app_routes.dart';
import 'package:get/get.dart';
import '../page/halaman_navigasi.dart';

class AppPages {
  static const DASHBOARD = Routes.DASHBOARD;
  static const NAVIGATION = Routes.NAVIGATION;

  static final list = [
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
    ),
    GetPage(
      name: Routes.NAVIGATION,
      page: () => NavigationPage(),
    ),
  ];
}
