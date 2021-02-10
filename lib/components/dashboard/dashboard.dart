// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:flutter/material.dart';
// import 'package:quiver/iterables.dart';
// import 'package:welfarebrothers_for_worker_api_client/api.dart';
//
// class ShiftTimeBar {
//   String time;
//   Role role;
//   int number;
//   ShiftTimeBar(this.time, this.role, this.number);
//   int get hour => int.parse(this.time.split(':')[0]);
//   int get minute => int.parse(this.time.split(':')[1]);
// }
//
// List<ShiftTimeBar> createShiftTimeBarFromShift(List<Shift> shifts) {
//   int maxHour = max(shifts.map((e) => int.parse(e.shiftPattern.timeTo.split(":")[0])));
//   int minHour = max(shifts.map((e) => int.parse(e.shiftPattern.timeFrom.split(":")[0])));
//   List<int> times = range(minHour, maxHour);
//   var dataByRole = Map<Role, List<ShiftTimeBar>>();
//   for (var time in times) {}
//   shifts.map((e) => e.shiftPattern.timeFrom);
// }
//
// List<ShiftTimeBar> trainerActual = [
//   ShiftTimeBar(
//     "09:00",
//     Role(id: 'trainer', name: '機能訓練士'),
//     4,
//   ),
//   ShiftTimeBar(
//     "12:00",
//     Role(id: 'trainer', name: '機能訓練士'),
//     4,
//   ),
//   ShiftTimeBar(
//     "15:00",
//     Role(id: 'trainer', name: '機能訓練士'),
//     4,
//   ),
// ];
// List<ShiftTimeBar> caregiverExpected = [
//   ShiftTimeBar(
//     "09:00",
//     Role(id: 'caregiver', name: '介護士'),
//     4,
//   ),
//   ShiftTimeBar(
//     "12:00",
//     Role(id: 'caregiver', name: '介護士'),
//     3,
//   ),
//   ShiftTimeBar(
//     "15:00",
//     Role(id: 'caregiver', name: '介護士'),
//     2,
//   ),
// ];
//
// List<charts.Series<ShiftTimeBar, int>> createSampleData() {
//   return [
//     charts.Series<ShiftTimeBar, int>(
//       id: 'caregiver',
//       displayName: "介護士",
//       domainFn: (ShiftTimeBar shiftTimeBar, _) => shiftTimeBar.hour,
//       measureFn: (ShiftTimeBar shiftTimeBar, _) => shiftTimeBar.number,
//       data: caregiverExpected,
//       colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
//       areaColorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault.lighter,
//     ),
//     charts.Series<ShiftTimeBar, int>(
//       id: 'trainer',
//       domainFn: (ShiftTimeBar shiftTimeBar, _) => shiftTimeBar.hour,
//       measureFn: (ShiftTimeBar shiftTimeBar, _) => shiftTimeBar.number,
//       colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
//       areaColorFn: (_, __) => charts.MaterialPalette.green.shadeDefault.lighter,
//       displayName: "機能訓練士",
//       data: trainerActual,
//     ),
//   ];
// }
//
// class WorkScheduleDailyDashboard extends StatefulWidget {
//   final List<charts.Series> seriesList;
//   final bool animate;
//   WorkScheduleDailyDashboard(this.seriesList, {this.animate});
//   factory WorkScheduleDailyDashboard.withSampleData() {
//     return WorkScheduleDailyDashboard(
//       createSampleData(),
//       animate: true,
//     );
//   }
//   @override
//   _WorkScheduleDailyDashboardState createState() => _WorkScheduleDailyDashboardState();
// }
//
// class _WorkScheduleDailyDashboardState extends State<WorkScheduleDailyDashboard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: charts.LineChart(
//         widget.seriesList,
//         defaultRenderer: charts.LineRendererConfig(
//           includeArea: true,
//           includePoints: true,
//           stacked: true,
//         ),
//         animate: widget.animate,
//         behaviors: [new charts.SeriesLegend()],
//         primaryMeasureAxis: charts.NumericAxisSpec(
//             renderSpec: charts.GridlineRendererSpec(
//                 labelStyle: charts.TextStyleSpec(
//                   fontSize: 10,
//                   color: charts.MaterialPalette.cyan.shadeDefault,
//                 ),
//                 lineStyle: charts.LineStyleSpec(
//                   color: charts.MaterialPalette.gray.shadeDefault,
//                 )),
//             tickProviderSpec: charts.BasicNumericTickProviderSpec(
//               zeroBound: true,
//               dataIsInWholeNumbers: true,
//             )),
//         domainAxis: charts.NumericAxisSpec(
//           tickProviderSpec: charts.BasicNumericTickProviderSpec(
//             zeroBound: false,
//             dataIsInWholeNumbers: true,
//           ),
//         ),
//       ),
//     );
//     return new charts.BarChart(widget.seriesList,
//         animate: widget.animate,
//         barGroupingType: charts.BarGroupingType.groupedStacked,
//         customSeriesRenderers: [
//           new charts.BarTargetLineRendererConfig<String>(
//               // ID used to link series to this renderer.
//               customRendererId: 'requiredLine',
//               groupingType: charts.BarGroupingType.grouped)
//         ]);
//   }
// }
