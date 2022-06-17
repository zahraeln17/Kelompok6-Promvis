// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter_aplikasiupi/page/halaman_dashboard.dart';
import 'package:flutter_aplikasiupi/route/app_pages.dart';
import 'package:flutter_aplikasiupi/route/app_routes.dart';
import 'package:flutter_aplikasiupi/page/halaman_kegiatan_kampus.dart';
import 'package:flutter_aplikasiupi/page/halaman_data_dosen_mahasiswa.dart';
import 'package:flutter_aplikasiupi/page/halaman_pencapaian_universitas.dart';
import 'package:get/get.dart';
import '../page/halaman_navigasi.dart';

class AppPages {
  static const DASHBOARD = Routes.DASHBOARD;
  static const NAVIGATION = Routes.NAVIGATION;
  static const KEGIATAN_KAMPUS = Routes.KEGIATAN_KAMPUS;
  static const DATA_DOSEN_MAHASISWA = Routes.DATA_DOSEN_MAHASISWA;
  static const PENCAPAIAN_UNIVERSITAS = Routes.PENCAPAIAN_UNIVERSITAS;

  static final list = [
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
    ),
    GetPage(
      name: Routes.NAVIGATION,
      page: () => NavigationPage(),
    ),
    GetPage(
      name: Routes.KEGIATAN_KAMPUS,
      page: () => KegiatanKampusPage(),
    ), // GetPage
    GetPage(
        name: Routes.DATA_DOSEN_MAHASISWA,
        page: () => DataDosenMahasiswaPage()),
    GetPage(
        name: Routes.PENCAPAIAN_UNIVERSITAS,
        page: () => PencapaianUniversitasPage()),
  ];
}
