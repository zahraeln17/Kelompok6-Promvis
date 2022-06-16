// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_aplikasiupi/shared/themes.dart';
import 'package:flutter_aplikasiupi/shared/widget/appbar_custom.dart';
import 'package:get/get.dart';

class DataDosenMahasiswaPage extends StatelessWidget {
  const DataDosenMahasiswaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarBasic(title: 'DATA MAHASISWA DAN DOSEN'),
      backgroundColor: kWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 30),
        children: [
          dataMahasiswa(),
          dataDosen(),
        ],
      ),
    );
  }

  Widget dataMahasiswa() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(color: kDeepBlue),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Vector-7.png',
                width: 60,
                height: 50,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'DATA\nMAHASISWA',
                style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          //PEMBATAS
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            width: 250,
            height: 5,
            color: kGreyColor,
          ),
          //TABLE
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: FlexColumnWidth(3),
                    1: FlexColumnWidth(3),
                    2: FlexColumnWidth(3),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: <TableRow>[
                    TableRow(
                      decoration: BoxDecoration(
                        color: kRedColor,
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'MHS AKTIF',
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'MHS NON-AKTIF',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'MHS LULUS',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    rowMahasiswa("2.300", "200", "500"),
                  ],
                ),
              ],
            ),
          ),
          //??
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 130,
                  width: 55,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 70,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 90,
                  width: 55,
                  decoration: BoxDecoration(
                    color: kGreyColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

// lanjut widget data dosen nanti pagi