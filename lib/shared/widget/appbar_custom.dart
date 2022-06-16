// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_aplikasiupi/shared/themes.dart';

import 'package:get/get.dart';

class CustomAppbarBasic extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(77);
  final String title;
  final VoidCallback? action;
  const CustomAppbarBasic({Key? key, required this.title, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        toolbarHeight: 77,
        centerTitle: true,
        backgroundColor: kDeepBlue,
        shadowColor: kWhiteColor,
        iconTheme: IconThemeData(color: kRedColor),
        leading: IconButton(
          onPressed: () => Get.toNamed(AppPages.NAVIGATION),
          icon: Icon(
            Icons.menu,
            size: 45,
          ),
        ),
        title: Text(
          title,
          style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 16),
        ),
      ),
    );
  }
}
