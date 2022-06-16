// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Color> gradientColors = [
    Color.fromARGB(255, 85, 122, 246),
    Color.fromARGB(255, 106, 182, 245),
  ];

  bool showAvg = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: CustomAppbarBasic(title: "DASHBOARD"),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          children: [
            profile(),
            tableKegiatan(),
            statistikBar(),
            tablePrestasi(),
            chartsStatistic()
          ]),
    );
  }

  Widget profile() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image Profile
          Image.asset(
            'assets/images/Vector.png',
            width: 90,
            height: 90,
          ),
          SizedBox(
            width: 20,
          ),
          SizedBox(
            width: Get.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Marta apaxs",
                  style:
                      blackTextStyle.copyWith(fontSize: 14, fontWeight: bold),
                ),
                Text(
                  "00000000",
                  style:
                      blackTextStyle.copyWith(fontSize: 14, fontWeight: bold),
                ),
                Text(
                  "Kepala Departemen Pendidikan Ilmu Komputer",
                  style:
                      blackTextStyle.copyWith(fontSize: 14, fontWeight: bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget statistikBar() {
    final List<ChartData> chartData = <ChartData>[
      ChartData('Jan', 8, 7),
      ChartData('Feb', 2, 7),
      ChartData('Mar', 8, 6),
      ChartData('Apr', 7, 5),
      ChartData('May', 4, 6),
      ChartData('April', 4, 6),
    ];
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(vertical: 20),
      width: Get.width,
      child: Column(
        children: [
          Text(
            "Statistik Kegiatan Perkuliahan",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 6,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Tingkat 1",
                    style:
                        blackTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 6,
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Tingkat 2",
                    style:
                        blackTextStyle.copyWith(fontSize: 12, fontWeight: bold),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: SfCartesianChart(
                borderColor: kWhiteColor,
                primaryXAxis: CategoryAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    minorGridLines: MinorGridLines(width: 0)),
                primaryYAxis: CategoryAxis(
                    majorGridLines: const MajorGridLines(width: 0),
                    minorGridLines: MinorGridLines(width: 0)),
                series: <CartesianSeries>[
                  ColumnSeries<ChartData, String>(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(70),
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y),
                  ColumnSeries<ChartData, String>(
                      color: Colors.red,
                      dataSource: chartData,
                      borderRadius: BorderRadius.circular(70),
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y1),
                ]),
          )
        ],
      ),
    );
  }

//table utama Kegiatan perkuliahan
  Widget tableKegiatan() {
    return Column(
      children: [
        Text(
          "Table Kegiatan Perkuliahan",
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            width: Get.width,
            child: Table(
              border: TableBorder.all(),
              columnWidths: const <int, TableColumnWidth>{
                0: FlexColumnWidth(1.5),
                1: FlexColumnWidth(4),
                2: FlexColumnWidth(1.5),
                3: FlexColumnWidth(2),
                4: FlexColumnWidth(2),
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
                        'No',
                        style: whiteTextStyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Mata Kuliah',
                        style: whiteTextStyle.copyWith(
                            fontWeight: bold, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'SKS',
                        style: whiteTextStyle.copyWith(
                            fontWeight: bold, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Waktu',
                        style: whiteTextStyle.copyWith(
                            fontWeight: bold, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Kelas',
                        style: whiteTextStyle.copyWith(
                            fontWeight: bold, fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                rowKegiatan("1", "Aljabar", "4", "17.00", "A33"),
                rowKegiatan("2", "Kalkulus", "2", "11.00", "A33"),
                rowKegiatan("3", "Android Studio", "3", "14.00", "A33"),
                rowKegiatan("4", "Data Science", "1", "12.00", "A33"),
              ],
            )),
      ],
    );
  }

//table row kegiatan perkuliahan
  rowKegiatan(
      String no, String matkul, String sks, String waktu, String kelas) {
    return TableRow(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            no,
            style: blackTextStyle.copyWith(fontSize: 12, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            matkul,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            sks,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            waktu,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            kelas,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

//table prestasi
  Widget tablePrestasi() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "Table Prestasi",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: Get.width,
              child: Table(
                border: TableBorder.all(),
                columnWidths: const <int, TableColumnWidth>{
                  0: FlexColumnWidth(1.5),
                  1: FlexColumnWidth(4),
                  2: FlexColumnWidth(2),
                  3: FlexColumnWidth(2),
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
                          'No',
                          style: whiteTextStyle.copyWith(
                              fontSize: 12, fontWeight: bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Prestasi',
                          style: whiteTextStyle.copyWith(
                              fontWeight: bold, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Tingkat',
                          style: whiteTextStyle.copyWith(
                              fontWeight: bold, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Deskripsi',
                          style: whiteTextStyle.copyWith(
                              fontWeight: bold, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  rowPrestasi("1", "Top Global Zilong", "Global", "mantap"),
                  rowPrestasi("2", "Top Lokal Miya", "Lokal", "mantap")
                ],
              )),
        ],
      ),
    );
  }

//table row kegiatan perkuliahan
  rowPrestasi(
    String no,
    String prestasi,
    String tingkat,
    String desc,
  ) {
    return TableRow(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            no,
            style: blackTextStyle.copyWith(fontSize: 12, fontWeight: bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            prestasi,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            tingkat,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            desc,
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  ///Chart Statistic
  Widget chartsStatistic() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1212',
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Text(
            'Statistikasd',
            style: blackTextStyle.copyWith(fontWeight: light, fontSize: 12),
            textAlign: TextAlign.center,
          ),
          Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 2,
                child: Container(
                  child: LineChart(
                    mainData(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('MAR', style: style);
        break;
      case 5:
        text = const Text('JUN', style: style);
        break;
      case 8:
        text = const Text('SEP', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '500';
        break;
      case 3:
        text = '1000';
        break;
      case 5:
        text = '1500';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
        drawVerticalLine: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: true, border: Border.all(color: kWhiteColor, width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 5),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.y1);
  final String x;
  final double? y;
  final double? y1;
}
