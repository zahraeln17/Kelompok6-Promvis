// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_aplikasiupi/shared/themes.dart';
import 'package:flutter_aplikasiupi/shared/widget/appbar_custom.dart';
import 'package:get/get.dart';

class DataSaranaPrasaranaPage extends StatelessWidget {
  const DataSaranaPrasaranaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarBasic(title: "DATA SARANA & PRASARANA"),
      backgroundColor: kWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          dataPrasarana(),
          dataSarana(),
        ],
      ),
    );
  }

  Widget dataPrasarana() {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kDeepBlue, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          Text(
            'DATA PRASARANA',
            style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          //PEMBATAS
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: Get.width,
            height: 5,
            color: kGreyColor,
          ),
          //TABLE
          Container(
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(1.5),
                    1: FlexColumnWidth(4),
                    2: FlexColumnWidth(2.5),
                    3: FlexColumnWidth(4),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      decoration: BoxDecoration(
                        color: kGreyColor,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'No',
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Jenis Prasarana',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Jumlah Unit',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Unit Pengelola',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    rowPrasarana("1", "Ruang Kuliah", "12", "Fakultas"),
                    rowPrasarana("2", "Perpustakaan", "1", "Universitas"),
                    rowPrasarana("3", "Auditorium", "1", "Fakultas"),
                    rowPrasarana("4", "Himpunan Mahasiswa", "1", "Fakultas"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  rowPrasarana(
      String no, String prasarana, String jumlahUnit, String pengelola) {
    return TableRow(
      decoration: BoxDecoration(color: kWhiteColor),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            no,
            style: blackTextStyle.copyWith(fontSize: 13, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            prasarana,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            jumlahUnit,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            pengelola,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget dataSarana() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: Get.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kDeepBlue, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          Text(
            'DATA SARANA',
            style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
          //PEMBATAS
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            width: Get.width,
            height: 5,
            color: kGreyColor,
          ),
          //TABLE
          Container(
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(1.5),
                    1: FlexColumnWidth(4),
                    2: FlexColumnWidth(2.5),
                    3: FlexColumnWidth(4),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      decoration: BoxDecoration(
                        color: kGreyColor,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'No',
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Jenis Prasarana Penunjang',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Jumlah Unit',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Unit Pengelola',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    rowPrasarana("1", "POLIKLINIK", "1", "UNIVERSITAS"),
                    rowPrasarana("2", "Perpustakaan", "1", "Universitas"),
                    rowPrasarana("3", "Auditorium", "1", "Fakultas"),
                    rowPrasarana("4", "Himpunan Mahasiswa", "1", "Fakultas"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
