import 'package:adaptive_admin_dashboard/core/utls/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          title: activeIndex == 0 ? 'Design service' : '40',
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          value: 40,
          radius: activeIndex == 0 ? 50 : 40,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          value: 25,
          titlePositionPercentageOffset: activeIndex == 1 ? 2.3 : null,
          title: activeIndex == 1 ? 'Design product' : '25',
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          radius: activeIndex == 1 ? 50 : 40,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          value: 20,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          title: activeIndex == 2 ? 'Product royalti' : '20',
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          radius: activeIndex == 2 ? 50 : 40,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          value: 22,
          titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          title: activeIndex == 3 ? 'Other' : '22',
          radius: activeIndex == 3 ? 50 : 40,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
