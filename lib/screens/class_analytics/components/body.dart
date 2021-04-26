import 'package:checkbox/classes/chart_data.dart';
import 'package:checkbox/classes/getAttendance.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var data;
  var present;
  var absent;

  Future getData() async {
    var x = await getAttendance("Uma", "2021-04-26", "CSE");

    print(x["body"]);

    setState(() {
      present = x["body"][0];
      absent = x["body"][1];
    });
  }

  @override
  void initState() {
    getData().whenComplete(() async {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(absent);
    final List<ChartData> chartData = [
      ChartData('Present', present, Color.fromRGBO(9, 0, 136, 1)),
      ChartData('Absent', absent, Color.fromRGBO(147, 0, 119, 1)),
    ];
    print(absent.runtimeType);
    return Container(
      child: SfCircularChart(
        legend: Legend(isVisible: true),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <CircularSeries>[
          // Renders doughnut chart
          DoughnutSeries<ChartData, String>(
              dataSource: chartData,
              explode: true,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              pointColorMapper: (ChartData data, _) => data.color,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y),
        ],
      ),
    );
  }
}
