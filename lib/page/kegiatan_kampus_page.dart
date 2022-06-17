// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_aplikasiupi/shared/themes.dart';
import 'package:flutter_aplikasiupi/shared/widget/appbar_custom.dart';
import 'package:get/get.dart';

class KegiatanKampusPage extends StatelessWidget {
  const KegiatanKampusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarBasic(title: "KEGIATAN UNIVERSITAS"),
      backgroundColor: kWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          infoEvent(),
          //infoPenelitian(),
        ],
      ),
    );
  }

  Widget infoEvent() {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Vector-9.png',
                width: 60,
                height: 60,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'INFORMASI\nEVENT',
                style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          //PEMBATAS
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            width: Get.width,
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
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(4),
                    2: FlexColumnWidth(4),
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
                            'NO',
                            style: blackTextStyle.copyWith(
                                fontSize: 12, fontWeight: bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Nama Event',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Tanggal Event',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    rowEvent("1", "Atma Asta", "10 Januari 2021"),
                    rowEvent("2", "DINAMIK", "5 Juli 2022"),
                    rowEvent("3", "INAUGURASI", "5 Januari 2022"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  rowEvent(
    String no,
    String namaEvent,
    String tanggal,
  ) {
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
            namaEvent,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            tanggal,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

Widget infoPenelitian() {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Vector-10.png',
                width: 60,
                height: 60,
                fit: BoxFit.fill,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'INFORMASI\nPENELITIAN',
                style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          //PEMBATAS
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 10),
            width: Get.width,
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
                    0: FlexColumnWidth(2),
                    1: FlexColumnWidth(4),
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
                            'TGL.PENELITAN',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'HASIL PENELITIAN',
                            style: blackTextStyle.copyWith(
                                fontWeight: bold, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    rowPenelitian("30/3/2022", "Penelitian LMS SPADA UPI"),
                    rowPenelitian("30/3/2020", "Geliat Radikalisme di Sekolah Menengah Atas"),
                    rowPenelitian("30/3/2019", "Ruralisasi & Kriminalitas Di Masa Pancemi Covid-19"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  rowPenelitian(
    String tanggal,
    String hasilPenelitian,
  ) {
    return TableRow(
      decoration: BoxDecoration(color: kWhiteColor),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            tanggal,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            hasilPenelitian,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }  
}
