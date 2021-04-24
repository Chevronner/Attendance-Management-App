import 'package:checkbox/classes/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25, Color.fromRGBO(9, 0, 136, 1)),
      ChartData('Steve', 38, Color.fromRGBO(147, 0, 119, 1)),
      ChartData('Jack', 34, Color.fromRGBO(228, 0, 124, 1)),
      ChartData('Others', 52, Color.fromRGBO(255, 189, 57, 1))
    ];
    return Container(
      child: SfCircularChart(
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
