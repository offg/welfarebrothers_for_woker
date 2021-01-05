import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';

class PieChartDashboard extends StatefulWidget {
  @override
  _PieChartDashboardState createState() => _PieChartDashboardState();
}

class _PieChartDashboardState extends State<PieChartDashboard> {
  int touchedIndex;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                    pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                      setState(() {
                        if (pieTouchResponse.touchInput is FlLongPressEnd || pieTouchResponse.touchInput is FlPanEnd) {
                          touchedIndex = -1;
                        } else {
                          touchedIndex = pieTouchResponse.touchedSectionIndex;
                        }
                      });
                    }),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 40,
                    sections: showingSections()),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              const Indicator(
                color: Colors.cyan,
                text: '中本',
                isSquare: false,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Colors.greenAccent,
                text: '平',
                isSquare: false,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Colors.deepOrangeAccent,
                text: '富永',
                isSquare: false,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: Colors.pinkAccent,
                text: '島津',
                isSquare: false,
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final double fontSize = isTouched ? 25 : 16;
      final double radius = isTouched ? 60 : 50;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.cyan.withOpacity(0.8),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.greenAccent.withOpacity(0.8),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.deepOrangeAccent.withOpacity(0.8),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.pinkAccent.withOpacity(0.8),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
          );
        default:
          return null;
      }
    });
  }
}
